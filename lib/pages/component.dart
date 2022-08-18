import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/isar/chat/chat.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/services/user.dart';
import 'package:flutter_chat/utils/date_format.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatBox extends HookConsumerWidget {
  final Chat chat;
  const ChatBox({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    final userKey = chat.senderKey;
    final userMemo =
        useMemoized(() => ref.watch(userServiceProvider).userByKey(userKey));

    final userAsync = useFuture(userMemo);
    final theme = Theme.of(context);
    final isMe = ref.watch(accountProvider).key == userAsync.data?.key;

    final rows = [
      Container(
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: theme.primaryColor)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(chat.data, style: theme.primaryTextTheme.bodyText1),
      ),
      const Padding(padding: EdgeInsets.only(left: 5)),
      Text(formatDateTime(chat.created),
          style: theme.primaryTextTheme.bodyText2)
    ];
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMe)
            Text(userAsync.data?.name ?? '',
                style: theme.primaryTextTheme.bodyText2),
          Row(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: isMe ? rows.reversed.toList() : rows,
          ),
        ],
      ),
    );
  }
}
