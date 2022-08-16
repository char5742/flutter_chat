import 'package:flutter_chat/domain/graphql/schema/schema.graphql.dart';
import 'package:flutter_chat/domain/isar/account/account.dart';
import 'package:flutter_chat/domain/isar/user/user.dart';
import 'package:flutter_chat/provider/graphql.dart';
import 'package:flutter_chat/provider/isar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userServiceProvider = Provider(UserService.new);

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
}
