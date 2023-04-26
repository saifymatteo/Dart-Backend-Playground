import 'package:backend_playground/states/states.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

Future<GrpcError?> authInterceptor(
  ServiceCall call,
  ServiceMethod<dynamic, dynamic> method,
) async {
  final openMethods = [
    '/backend.AccountGrpcService/CreateAccount',
    '/backend.AccountGrpcService/Login',
  ];

  final metadata = call.clientMetadata ?? {};

  final methodName = metadata[':path'];
  if (openMethods.contains(methodName)) {
    return null;
  }

  final token = metadata['authorization'];
  final isLoggedIn = GetIt.instance.get<UserToken>().isUserLoggedIn(token);

  if (token == null || !isLoggedIn) {
    return GrpcError.unauthenticated('Token not found');
  }

  return null;
}
