import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/chat.dart';
import 'package:flutter_chat/pages/signup.dart';
import 'package:flutter_chat/pages/user_search.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/theme.dart';
import 'pages/home.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    late final router = GoRouter(routes: [
      GoRoute(
          path: '/',
          redirect: (_) {
            if (ref.watch(accountProvider).accessToken == null) {
              return '/signup';
            } else {
              return '/home';
            }
          }),
      GoRoute(
          path: '/home',
          builder: (_, __) {
            return const HomePage();
          },
          routes: [
            GoRoute(
              path: 'chatroom',
              builder: (_, __) {
                return const ChatRoomPage();
              },
            ),
            GoRoute(
              path: 'usersearch',
              builder: (_, __) {
                return const UserSearchPage();
              },
            ),
          ]),
      GoRoute(
        path: '/signup',
        builder: (_, __) {
          return const SignUpPage();
        },
      ),
    ]);

    return Builder(
      builder: (ctx) => MaterialApp.router(
        theme: theme,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}
