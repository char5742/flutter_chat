import 'package:isar/isar.dart';

part 'chat.g.dart';

@Collection()
class Chat {
  Id id = Isar.autoIncrement;
  @Index(unique: true)
  late String key;
  late String data;
  late DateTime created;
  late String senderKey;
  late String recieverKey;
}
