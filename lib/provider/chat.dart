import 'package:flutter_chat/domain/isar/chat/chat.dart';
import 'package:flutter_chat/provider/isar.dart';
import 'package:flutter_chat/services/chat.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

final chatListProvider = StreamProvider((ref) {
  ref.read(chatServiceProvider).allMyChat();
  ref.read(chatServiceProvider).chatRecieveWatch();
  return ref.read(isarProvider).chats.where().watch(initialReturn: true);
});