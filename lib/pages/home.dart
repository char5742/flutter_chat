import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/component.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/services/user.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          OutlinedIconButton(
            onPressed: () {
              context.go('/home/usersearch');
            },
            icon: Icons.person_add_outlined,
          ),
          OutlinedIconButton(
            onPressed: () {},
            icon: Icons.settings_outlined,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ...ref
                .watch(accountProvider)
                .following
                .map((key) => FollowingBox(userKey: key))
          ],
        ),
      ),
    );
  }
}

class FollowingBox extends HookConsumerWidget {
  final String userKey;
  const FollowingBox({
    Key? key,
    required this.userKey,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    final userMemo =
        useMemoized(() => ref.watch(userServiceProvider).userByKey(userKey));

    final userAsync = useFuture(userMemo);
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      child: Text(userAsync.data?.name ?? ''),
    );
  }
}
