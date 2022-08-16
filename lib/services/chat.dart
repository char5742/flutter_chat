import 'package:flutter_chat/domain/graphql/schema/schema.graphql.dart';
import 'package:flutter_chat/domain/isar/chat/chat.dart';
import 'package:flutter_chat/provider/chat.dart';
import 'package:flutter_chat/provider/graphql.dart';
import 'package:flutter_chat/provider/isar.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatServiceProvider = Provider(ChatService.new);

class ChatService {
  final Ref ref;
  ChatService(this.ref);
  Future<void> allMyChat() async {
    final key = ref.read(accountProvider).key;
    final res = await ref.read(graphqlProvider).chatUser(key);
    if (res.hasException) {
      throw res.exception!;
    }
    final user = res.parsedData!.user!;
    final isar = ref.read(isarProvider);
    await isar.writeTxn(() async {
      if (user.recieve != null) {
        for (final e in user.recieve!) {
          final newChat = Chat()
            ..created = e.created
            ..key = e.key
            ..data = e.data
            ..senderKey = e.sender!.key
            ..recieverKey = e.reciever!.key;
          await isar.chats.putByKey(newChat);
        }
      }
      if (user.send != null) {
        for (final e in user.send!) {
          final newChat = Chat()
            ..created = e.created
            ..key = e.key
            ..data = e.data
            ..senderKey = e.sender!.key
            ..recieverKey = e.reciever!.key;
          await isar.chats.putByKey(newChat);
        }
      }
    });
  }

  Future<void> chatSend({
    required String data,
    required String recieverKey,
  }) async {
    final res = await ref
        .read(graphqlProvider)
        .chatSend(Input$ChatInfo(data: data, recieverKey: recieverKey));
    if (res.hasException) {
      throw res.exception!;
    }
    final chat = res.parsedData!.chatSend!;
    final isar = ref.read(isarProvider);
    await isar.writeTxn(() => isar.chats.put(Chat()
      ..data = chat.data
      ..key = chat.key
      ..created = chat.created
      ..recieverKey = chat.reciever!.key
      ..senderKey = chat.sender!.key));
  }

  Future<void> chatDelete(String key) async {
    final res = await ref.read(graphqlProvider).chatDelete(key);
    if (res.hasException) {
      throw res.exception!;
    }
    final isar = ref.read(isarProvider);
    await isar.writeTxn(() => ref.read(isarProvider).chats.deleteByKey(key));
  }

  void chatRecieveWatch() {
    final stream = ref.read(graphqlProvider).chatSendWatch();
    final isar = ref.read(isarProvider);
    stream.listen((res) {
      print('call');
      if (res.hasException) {
        throw res.exception!;
      } else {
        print(res);
        final chat = res.parsedData!.chatSend!;
        isar.writeTxn(() async {
          final newChat = Chat()
            ..created = chat.created
            ..key = chat.key
            ..data = chat.data
            ..senderKey = chat.sender!.key
            ..recieverKey = chat.reciever!.key;
          await isar.chats.put(newChat);
        });
        ref.refresh(chatListProvider);
      }
    });
  }
}
