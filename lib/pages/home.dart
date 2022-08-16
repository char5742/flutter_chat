import 'package:flutter/material.dart';
import 'package:flutter_chat/provider/chat.dart';
import 'package:flutter_chat/services/chat.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final theme = Theme.of(context);
    ref.watch(chatServiceProvider).allMyChat();
    ref.watch(chatServiceProvider).chatRecieveWatch();

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
                child: Column(
              children: [
                ...ref
                    .watch(chatListProvider)
                    .map(
                      (e) => Text(e.data),
                    )
                    .toList(),
              ],
            )),
          ),
          TextFormField(style: theme.primaryTextTheme.bodyText1),
          TextFormField(style: theme.primaryTextTheme.bodyText1),
        ],
      ),
    );
  }
}
