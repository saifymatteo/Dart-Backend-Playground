import 'dart:async';
import 'dart:io';

import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/env/env.dart';
import 'package:backend_playground/interceptors/interceptors.dart';
import 'package:backend_playground/models/models.dart';
import 'package:backend_playground/services/services.dart';
import 'package:backend_playground/states/states.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';

/// Constant [Database] object
Database initDatabase() => Database(
      debugPrint: true,
      host: Env.dbHostAddress,
      port: int.parse(Env.dbPort),
      database: Env.dbName,
      user: Env.dbUsername,
      password: Env.dbPassword,
      useSSL: false,
      isUnixSocket: false,
    );

Future<void> main() async {
  final postgres = initDatabase();

  // Logger registration
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) async {
    // ignore: avoid_print
    print('${event.time}: ${event.level.name}: ${event.message}');
  });

  // Provider registration
  GetIt.instance
    ..registerSingleton<Debounce>(Debounce())
    ..registerSingleton<UserToken>(UserToken());

  final accountService =
      AccountGrpcService(repository: postgres.accountSchemas);
  final personService = PersonGrpcService(repository: postgres.personSchemas);

  final server = Server(
    [accountService, personService],
    [authInterceptor],
  );

  final address = InternetAddress('0.0.0.0');
  const port = 8080;

  await server.serve(address: address, port: port);

  Logger.root.info('Server running at $address on $port');
}
