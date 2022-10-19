import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/component.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final theme = Theme.of(context);
    final controller = useTextEditingController();
    final push = useState(false);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 50),
            child: Text(
              '名前を入力してください',
              style: theme.textTheme.headline4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                validator: (value) => value!.isEmpty ? '名前を入力してください' : null,
                style: theme.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
              top: 30,
            ),
            child: ElevatedButton(
                onPressed: () async {
                  if (!push.value && formKey.currentState!.validate()) {
                    push.value = true;
                    try {
                      await ref
                          .read(userServiceProvider)
                          .signUp(controller.text);
                    } on OperationException catch (e) {
                      if (e.linkException != null) {
                        showOutlinedDialog(
                          context: context,
                          text: 'ネットワークに接続できませんでした',
                        );
                      }
                    }
                    push.value = false;
                  }
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '確定',
                    style: theme.textTheme.button?.copyWith(fontSize: 24),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
