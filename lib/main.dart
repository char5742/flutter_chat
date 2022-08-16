import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/isar/account/account.dart';
import 'package:flutter_chat/domain/isar/chat/chat.dart';
import 'package:flutter_chat/domain/isar/user/user.dart';
import 'package:flutter_chat/provider/isar.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

import 'app.dart';

Future main() async {
  await dotenv.load(fileName: 'assets/.env');
  WidgetsFlutterBinding.ensureInitialized();
  final isar = await Isar.open([UserSchema, ChatSchema, AccountSchema]);
  runApp(ProviderScope(
    overrides: [isarProvider.overrideWithValue(isar)],
    child: const App(),
  ));
}
