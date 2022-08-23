import 'package:flutter_chat/domain/chat.dart';
import 'package:flutter_chat/services/chat.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatListProvider = StreamProvider((ref) {
  ref.read(chatServiceProvider).chatRecieveWatch().listen((event) {});
  return ref.read(chatServiceProvider).allMyChat();
});

final chatRoomProvider =
    Provider.family.autoDispose<List<Chat>, String>((ref, key) {
  return ref.watch(chatListProvider.select((list) =>
      list.asData?.value
          .where((element) =>
              element.senderKey == key || element.recieverKey == key)
          .toList() ??
      []));
});
