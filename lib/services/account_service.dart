import 'package:backend_playground/generated/google/protobuf/empty.pb.dart';
import 'package:backend_playground/generated/models/account.pb.dart';
import 'package:backend_playground/generated/services/account_service.pbgrpc.dart';
import 'package:backend_playground/models/models.dart';
import 'package:backend_playground/states/states.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:stormberry/stormberry.dart';
import 'package:uuid/uuid.dart';

class AccountGrpcService extends AccountGrpcServiceBase {
  AccountGrpcService({required this.repository});

  final AccountSchemaRepository repository;

  @override
  Future<AccountGrpc> createAccount(
    ServiceCall call,
    AccountGrpc request,
  ) async {
    final username = request.username;
    final password = request.password;

    final alreadyExist = await repository
        .queryAccountSchemas(QueryParams(where: "username = '$username'"));
    if (alreadyExist.isNotEmpty) {
      throw GrpcError.alreadyExists('username already exists');
    }

    final insert = await repository.insertOne(
      AccountSchemaInsertRequest(
        username: username,
        password: password,
        createdAt: DateTime.now(),
      ),
    );

    final response = await repository.queryAccountSchema(insert);

    return AccountGrpc(
      id: response?.id,
      username: response?.username,
      password: response?.password,
    );
  }

  @override
  Future<Empty> deleteAccount(ServiceCall call, DeleteAccountRequest request) {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<AccountGrpc> getAccount(ServiceCall call, GetAccountRequest request) {
    // TODO: implement getAccount
    throw UnimplementedError();
  }

  @override
  Future<LoginResponse> login(ServiceCall call, LoginRequest request) async {
    final username = request.username;
    final password = request.password;

    final query = await repository.queryAccountSchemas(
      QueryParams(where: "username = '$username' AND password = '$password'"),
    );
    if (query.isEmpty) {
      throw GrpcError.notFound('account not found');
    }

    final metadata = call.clientMetadata ?? {};
    final user = query.first;
    final token = const Uuid().v4();

    GetIt.instance.get<UserToken>().setUserLoggedIn(MapEntry(user.id, token));
    metadata.addEntries([MapEntry('authorization', token)]);

    return LoginResponse(id: user.id, token: token);
  }

  @override
  Future<AccountGrpc> updateAccount(
    ServiceCall call,
    UpdateAccountRequest request,
  ) {
    // TODO: implement updateAccount
    throw UnimplementedError();
  }
}
