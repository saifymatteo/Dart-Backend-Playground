import 'dart:async';
import 'dart:io';

import 'package:backend_playground/env/env.dart';
import 'package:backend_playground/generated/prisma_client.dart';
import 'package:backend_playground/user/user.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart' as logger;
import 'package:orm/logger.dart';

import 'components/utility/debounce.dart';

final prisma = PrismaClient(
  stdout: [Event.error, Event.warn],
  // event: Event.values,
  datasources: Datasources(db: Env.databaseUrl),
);

final getIt = GetIt.instance;

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  // Logger registration
  logger.Logger.root.level = logger.Level.ALL;
  logger.Logger.root.onRecord.listen((event) async {
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
