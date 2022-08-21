import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/component.dart';
import 'package:flutter_chat/provider/user.dart';
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
        title: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'チャット',
          ),
        ),
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
      body: SingleChildScrollView(
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
    final userAsync = ref.watch(userProvider(userKey));
    final theme = Theme.of(context);
    final tap = useState(false);
    return Container(
      child: userAsync.whenOrNull(
        data: (data) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapCancel: () => tap.value = false,
          onTapDown: (_) => tap.value = true,
          onTapUp: (_) => tap.value = false,
          onTap: () => context.go('/home/chatroom/${data?.key}'),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: tap.value ? Colors.grey.withOpacity(0.2) : null,
            width: double.infinity,
            child: Text(
              data?.name ?? '',
              style: theme.primaryTextTheme.headline6,
            ),
          ),
        ),
        error: (error, stackTrace) => Container(),
        loading: () => Container(),
      ),
    );
  }
}
