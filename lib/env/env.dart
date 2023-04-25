import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'DATABASE_HOST')
  static final databaseHost = _Env.databaseHost;

  @EnviedField(varName: 'DATABASE_PORT')
  static final databasePort = _Env.databasePort;

  @EnviedField(varName: 'DATABASE_NAME')
  static final databaseName = _Env.databaseName;

  @EnviedField(varName: 'DATABASE_USERNAME')
  static final databaseUsername = _Env.databaseUsername;

  @EnviedField(varName: 'DATABASE_PASSWORD')
  static final databasePassword = _Env.databasePassword;
}
