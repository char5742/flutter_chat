import 'package:flutter_chat/domain/isar/chat/chat.dart';
import 'package:flutter_chat/provider/isar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

final chatListProvider = Provider((ref) {
  return ref.read(isarProvider).chats.where().findAllSync();
});
