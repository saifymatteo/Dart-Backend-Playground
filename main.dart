import 'dart:async';
import 'dart:io';

import 'package:backend_playground/env/env.dart';
import 'package:backend_playground/user/user.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';

import 'components/utility/debounce.dart';

final getIt = GetIt.instance;

/// Constant [Database] object
Database initDatabase() => Database(
  debugPrint: true,
  host: Env.databaseHost,
  port: int.parse(Env.databasePort),
  database: Env.databaseName,
  user: Env.databaseUsername,
  password: Env.databasePassword,
);

/// Object to refer when using [Database].
/// Need to reassign in case of disconnection
Database postgres = initDatabase();

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  await postgres.open();

  // Logger registration
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) async {
    // ignore: avoid_print
    print('${event.time}: ${event.level.name}: ${event.message}');
  });

  // Provider registration
  if (!getIt.isRegistered<Debounce>()) {
    getIt.registerSingleton<Debounce>(Debounce());
  }
  if (!getIt.isRegistered<UserToken>()) {
    getIt.registerSingleton<UserToken>(UserToken());
  }

  return serve(handler, ip, port);
}
