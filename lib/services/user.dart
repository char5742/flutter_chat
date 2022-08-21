import 'package:flutter_chat/domain/graphql/schema/schema.graphql.dart';
import 'package:flutter_chat/domain/isar/account/account.dart';
import 'package:flutter_chat/domain/isar/user/user.dart';
import 'package:flutter_chat/provider/graphql.dart';
import 'package:flutter_chat/provider/isar.dart';
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
    final isar = ref.read(isarProvider);
    await isar.writeTxn(() => isar.accounts.put(Account()
      ..accessToken = user.accessToken
      ..name = user.name
      ..key = user.key
      ..followBy = []
      ..following = []));
  }

  Future<User?> userByKey(String key) async {
    final isarUser = await ref.watch(isarProvider).users.getByKey(key);
    if (isarUser != null) return isarUser;

    final res = await ref.read(graphqlProvider).userByKey(key);
    if (res.hasException) {
      throw res.exception!;
    }
    final user = res.parsedData?.user;
    if (user == null) {
      return null;
    }
    return User()
      ..followBy =
          user.followBy == null ? [] : user.followBy!.map((e) => e.key).toList()
      ..following = user.following == null
          ? []
          : user.following!.map((e) => e.key).toList()
      ..key = user.key
      ..name = user.name;
  }

  Future<void> follow(String key) async {
    final res = await ref.read(graphqlProvider).userFollow(key);
    if (res.hasException) {
      throw res.exception!;
    }
    final isar = ref.read(isarProvider);
    final userKey = res.parsedData?.userFollow?.key;
    if (userKey != null) {
      await isar.writeTxn(() async {
        final account = await isar.accounts.get(1);
        account!.following = account.following.toList()..add(userKey);
        await isar.accounts.put(account);
      });
    }
  }

  Future<void> unfollow(String key) async {
    final res = await ref.read(graphqlProvider).userUnFollow(key);
    if (res.hasException) {
      throw res.exception!;
    }
    final isar = ref.read(isarProvider);
    final userKey = res.parsedData?.userUnFollow?.key;
    if (userKey != null) {
      await isar.writeTxn(() async {
        final account = await isar.accounts.get(1);
        account!.following = account.following.toList()..remove(userKey);
        await isar.accounts.put(account);
      });
    }
  }
}
