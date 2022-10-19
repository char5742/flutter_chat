import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat/domain/user.dart';
import 'package:flutter_chat/pages/component.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/utils/window.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserSearchPage extends HookConsumerWidget {
  const UserSearchPage({Key? key, this.defaultKey}) : super(key: key);
  final String? defaultKey;

  @override
  Widget build(context, ref) {
    final theme = Theme.of(context);
    final keyContriller = useTextEditingController(text: defaultKey);
    final listenableCotroller = useValueListenable(keyContriller);
    final user = useState<User?>(null);
    search() async {
      // 自分を検索できないように
      if (keyContriller.text != ref.read(accountProvider).key) {
        user.value =
            await ref.read(userServiceProvider).userByKey(keyContriller.text);
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: OutlinedIconButton(
          icon: Icons.arrow_back_ios,
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text('自分のKEY'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ref.watch(accountProvider).key),
                OutlinedIconButton(
                  icon: Icons.copy_outlined,
                  color: Colors.grey,
                  onPressed: () async {
                    final data =
                        ClipboardData(text: ref.watch(accountProvider).key);
                    await Clipboard.setData(data);
                  },
                ),
                OutlinedIconButton(
                  icon: Icons.qr_code_2_outlined,
                  color: Colors.grey,
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) => Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        child: QrImage(
                          data:
                              '${getLocation()}?key=${ref.watch(accountProvider).key}',
                          version: QrVersions.auto,
                          backgroundColor: Colors.white,
                          size: 200.0,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: keyContriller,
                style: theme.textTheme.bodyText2,
                onEditingComplete: search,
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  focusColor: Colors.transparent,
                  fillColor: const Color.fromARGB(69, 158, 158, 158),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  hintText: "友達のKEYで検索",
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (listenableCotroller.text.isNotEmpty)
                        GestureDetector(
                          onTap: keyContriller.clear,
                          child: const Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                      GestureDetector(
                        onTap: search,
                        child: const Icon(Icons.search_outlined,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            user.value != null
                ? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          user.value!.name,
                          style: theme.textTheme.headline1,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (!ref
                              .watch(followingProvider)
                              .contains(user.value!.key)) {
                            ref
                                .read(userServiceProvider)
                                .follow(user.value!.key);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 10,
                          ),
                          child: Text(
                            ref
                                    .watch(followingProvider)
                                    .contains(user.value!.key)
                                ? '追加済み'
                                : '追加',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.button,
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
