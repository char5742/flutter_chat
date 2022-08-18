import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/component.dart';
import 'package:flutter_chat/provider/chat.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/services/chat.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

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
