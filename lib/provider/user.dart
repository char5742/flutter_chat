import 'package:flutter_chat/domain/account.dart';
import 'package:flutter_chat/domain/user.dart';

import 'package:flutter_chat/services/user.dart';
import 'package:flutter_chat/utils/cookie.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final accountProvider = Provider<Account>((ref) {
  final cookie = getCookie();
  final userKey = cookie['userKey'];
  final accessToken = cookie['accessToken'];
  return Account()
    ..accessToken = accessToken
    ..key = userKey ?? '';
});

final userWatchProvider = StreamProvider.family<User, String>(
    (ref, key) => ref.read(userServiceProvider).userByKeyWatch(key));

final userProvider = FutureProvider.family<User?, String>((ref, key) async {
  return ref.read(userServiceProvider).userByKey(key);
});

final userServiceProvider = Provider(UserService.new);

final followingProvider = Provider<List<String>>((ref) => ref.watch(
    userWatchProvider(ref.watch(accountProvider).key)
        .select((value) => value.asData?.value.following ?? [])));
