import 'package:flutter_chat/domain/graphql/schema/schema.graphql.dart';
import 'package:flutter_chat/domain/user.dart';
import 'package:flutter_chat/provider/graphql.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/utils/cookie.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserService {
  final Ref ref;
  UserService(this.ref);
  Future<void> signUp(String name) async {
    final res =
        await ref.read(graphqlProvider).userSignUp(Input$UserInfo(name: name));
    if (res.hasException) {
      throw res.exception!;
    }
    final user = res.parsedData!.userSignUp!;
    setCookie(key: 'userKey', value: user.key);
    setCookie(key: 'accessToken', value: user.accessToken!);
    ref.refresh(accountProvider);
  }

  Future<User?> userByKey(String key) async {
    final res = await ref.read(graphqlProvider).userByKey(key);
    if (res.hasException) {
      throw res.exception!;
    }
    final user = res.parsedData?.user;
    if (user == null) {
      return null;
    }
    return User()
      ..followBy = [...?user.followBy?.map((e) => e.key)]
      ..following = [...?user.following?.map((e) => e.key)]
      ..key = user.key
      ..name = user.name;
  }

  Stream<User> userByKeyWatch(String key) async* {
    final watch = ref.read(graphqlProvider).userByKeyWatch(key);
    final stream = watch.stream;

    await for (final res in stream) {
      if (res.hasException) {
        throw res.exception!;
      } else {
        final user = res.parsedData?.user;

        yield User()
          ..followBy = [...?user?.followBy?.map((e) => e.key)]
          ..following = [...?user?.following?.map((e) => e.key)]
          ..key = user?.key ?? ''
          ..name = user?.name ?? '';
      }
    }
  }

  Future<void> follow(String key) async {
    final res = await ref.read(graphqlProvider).userFollow(key);
    if (res.hasException) {
      throw res.exception!;
    }
    final user =
        ref.read(graphqlProvider).userByKeyRead(ref.watch(accountProvider).key);

    final targetUser = ref.read(graphqlProvider).userByKeyRead(key);
    ref.read(graphqlProvider).userByKeyWrite(
        user!..user!.following!.add(targetUser!.user!), user.user!.key);
  }

  Future<void> unfollow(String key) async {
    final res = await ref.read(graphqlProvider).userUnFollow(key);
    if (res.hasException) {
      throw res.exception!;
    }
  }
}
