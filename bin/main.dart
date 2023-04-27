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

/// Object to refer when using [Database].
/// Need to reassign in case of disconnection
late Database postgres;

/// Constant [Database] object
Database initDatabase() => Database(
      debugPrint: true,
      host: Env.databaseHost,
      port: int.parse(Env.databasePort),
      database: Env.databaseName,
      user: Env.databaseUsername,
      password: Env.databasePassword,
    );

Future<void> main() async {
  postgres = initDatabase();

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

  final ip = InternetAddress.anyIPv4;
  const port = 8080;

  await server.serve(address: ip, port: port);

  Logger.root.info('Server running at $ip on $port');
}
