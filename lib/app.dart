import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/signup.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/theme.dart';
import 'pages/home.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final key = GlobalKey();
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
          return HomePage(key: key);
        },
      ),
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
