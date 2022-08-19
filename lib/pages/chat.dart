import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_chat/provider/chat.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/services/chat.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_chat/domain/isar/chat/chat.dart';
import 'package:flutter_chat/services/user.dart';
import 'package:flutter_chat/utils/date_format.dart';

class ChatRoomPage extends HookConsumerWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final theme = Theme.of(context);
    final targetController = useTextEditingController();
    final chatController = useTextEditingController();
    final scrollController = useScrollController();
    void scrollDown() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      });
    }

    useEffect(() {
      ref.read(chatListProvider).whenData((value) => scrollDown());
      log(ref.read(accountProvider).key);
      return null;
    }, [ref.watch(chatListProvider).asData?.value != null]);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      ...?ref
                          .watch(chatListProvider)
                          .asData
                          ?.value
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: ChatBox(
                                chat: e,
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  )),
            ),
            TextFormField(
              controller: targetController,
              style: theme.primaryTextTheme.bodyText1,
            ),
            TextFormField(
              controller: chatController,
              style: theme.primaryTextTheme.bodyText1,
            ),
            ElevatedButton(
              onPressed: () async {
                await ref.read(chatServiceProvider).chatSend(
                    data: chatController.text,
                    recieverKey: targetController.text);
                ref.read(chatListProvider).whenData((value) => scrollDown());
              },
              child: const Text('送信'),
            ),
            Text('mykey: ${ref.watch(accountProvider).key}'),
          ],
        ),
      ),
    );
  }
}

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
