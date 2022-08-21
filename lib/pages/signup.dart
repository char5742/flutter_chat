import 'package:flutter/material.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final theme = Theme.of(context);
    final controller = useTextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 200)),
          TextFormField(
              controller: controller, style: theme.primaryTextTheme.bodyText1),
          ElevatedButton(
              onPressed: () async {
                await ref.read(userServiceProvider).signUp(controller.text);
              },
              child: const Text('確定')),
        ],
      ),
    );
  }
}
