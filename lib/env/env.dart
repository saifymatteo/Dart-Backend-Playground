import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'DATABASE_URL', obfuscate: true)
  static final databaseUrl = _Env.databaseUrl;
}