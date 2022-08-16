import 'package:isar/isar.dart';

part 'account.g.dart';

@Collection()
class Account {
  Id id = Isar.autoIncrement;

  late String name;
  late String key;
  String? accessToken;
  late List<String> followBy;
  late List<String> following;
}
