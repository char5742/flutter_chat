import 'package:isar/isar.dart';

part 'user.g.dart';

@Collection()
class User {
  Id id = Isar.autoIncrement;

  late String name;
  @Index(unique: true)
  late String key;
  late List<String> followBy;
  late List<String> following;
}
