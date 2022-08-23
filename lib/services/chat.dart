import 'package:flutter_chat/domain/chat.dart';
import 'package:flutter_chat/domain/graphql/schema/schema.graphql.dart';
import 'package:flutter_chat/provider/graphql.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatServiceProvider = Provider(ChatService.new);

class ChatService {
  final Ref ref;
  ChatService(this.ref);
  Stream<List<Chat>> allMyChat() async* {
    final key = ref.read(accountProvider).key;
    final stream = ref.read(graphqlProvider).chatUserWatch(key).stream;
    yield await ref.read(graphqlProvider).chatUser(key).then((res) {
      final user = res.parsedData!.user;
      if (user == null) {
        return [];
      }
      final chats = [
            ...?res.parsedData?.user?.recieve?.map((chat) => Chat()
              ..created = chat.created
              ..key = chat.key
              ..data = chat.data
              ..senderKey = chat.sender!.key
              ..recieverKey = chat.reciever!.key)
          ] +
          [
            ...?res.parsedData?.user?.send?.map((chat) => Chat()
              ..created = chat.created
              ..key = chat.key
              ..data = chat.data
              ..senderKey = chat.sender!.key
              ..recieverKey = chat.reciever!.key)
          ];
      chats.sort((a, b) => a.created.compareTo(b.created));

      return chats;
    });
    await for (final res in stream) {
      if (res.hasException) {
        throw res.exception!;
      } else {
        final user = res.parsedData!.user;

        if (user == null) {
          yield [];
        }
        final chats = [
              ...?res.parsedData?.user?.recieve?.map((chat) => Chat()
                ..created = chat.created
                ..key = chat.key
                ..data = chat.data
                ..senderKey = chat.sender!.key
                ..recieverKey = chat.reciever!.key)
            ] +
            [
              ...?res.parsedData?.user?.send?.map((chat) => Chat()
                ..created = chat.created
                ..key = chat.key
                ..data = chat.data
                ..senderKey = chat.sender!.key
                ..recieverKey = chat.reciever!.key)
            ];
        print('chat watch');
        chats.sort((a, b) => a.created.compareTo(b.created));

        yield chats;
      }
    }
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
    final key = ref.read(accountProvider).key;
    final user = ref.read(graphqlProvider).chatUserRead(key);
    final chat = res.parsedData!.chatSend!;
    ref.read(graphqlProvider).chatUserWrite(user!..user!.send!.add(chat), key);
  }

  Future<void> chatDelete(String key) async {
    final res = await ref.read(graphqlProvider).chatDelete(key);
    if (res.hasException) {
      throw res.exception!;
    }
  }

  Stream<Chat> chatRecieveWatch() async* {
    final stream = ref.read(graphqlProvider).chatSendWatch();
    final key = ref.read(accountProvider).key;
    await for (final res in stream) {
      if (res.hasException) {
        throw res.exception!;
      } else {
        final chat = res.parsedData!.chatSend!;
        yield Chat()
          ..created = chat.created
          ..key = chat.key
          ..data = chat.data
          ..senderKey = chat.sender!.key
          ..recieverKey = chat.reciever!.key;
        final user = ref.read(graphqlProvider).chatUserRead(key);
        ref
            .read(graphqlProvider)
            .chatUserWrite(user!..user!.recieve!.add(chat), key);
      }
    }
  }
}
