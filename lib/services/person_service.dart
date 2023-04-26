import 'package:backend_playground/generated/google/protobuf/empty.pb.dart';
import 'package:backend_playground/generated/google/protobuf/timestamp.pb.dart';
import 'package:backend_playground/generated/models/account.pb.dart';
import 'package:backend_playground/generated/models/person.pb.dart';
import 'package:backend_playground/generated/services/person_service.pbgrpc.dart';
import 'package:backend_playground/models/models.dart';
import 'package:backend_playground/states/states.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:logging/logging.dart';

class PersonGrpcService extends PersonGrpcServiceBase {
  PersonGrpcService({required this.repository});

  final PersonSchemaRepository repository;

  @override
  Future<PersonGrpc> createPerson(ServiceCall call, PersonGrpc request) async {
    final firstName = request.firstName;
    final lastName = request.lastName;
    final gender = request.gender;
    final dateOfBirth = request.dateOfBirth;
    final email = request.email;

    final userId =
        GetIt.instance.get<UserToken>().getUserId(call.clientMetadata ?? {});
    Logger.root.finest('TEST: metadata ${call.clientMetadata}');
    Logger.root.finest('TEST: userId $userId');
    if (userId == null) {
      throw GrpcError.unauthenticated('User ID not valid');
    }

    final insert = await repository.insertOne(
      PersonSchemaInsertRequest(
        firstName: firstName,
        lastName: lastName,
        gender: gender,
        dateOfBirth: DateTime.fromMillisecondsSinceEpoch(
          (dateOfBirth.seconds.toInt() / 1000).round(),
        ),
        email: email,
        accountId: userId,
      ),
    );

    final person = await repository.queryPersonSchema(insert);
    if (person == null) {
      GrpcError.internal('Create failed');
    }

    return PersonGrpc(
      id: person!.id,
      firstName: person.firstName,
      lastName: person.lastName,
      gender: person.gender,
      dateOfBirth: Timestamp.fromDateTime(person.dateOfBirth),
      email: person.email,
      account: AccountGrpc(id: person.account.id),
    );

    // TODO: implement createPerson
    throw UnimplementedError();
  }

  @override
  Future<Empty> deletePerson(ServiceCall call, DeletePersonRequest request) {
    // TODO: implement deletePerson
    throw UnimplementedError();
  }

  @override
  Future<PersonGrpc> getPerson(
    ServiceCall call,
    GetPersonRequest request,
  ) async {
    final id = request.id;

    final person = await repository.queryPersonSchema(id);
    if (person == null) {
      throw GrpcError.notFound();
    }

    return PersonGrpc(
      id: person.id,
      firstName: person.firstName,
      lastName: person.lastName,
      gender: person.gender,
      dateOfBirth: Timestamp.fromDateTime(person.dateOfBirth),
      email: person.email,
      account: AccountGrpc(id: person.account.id),
    );
  }

  @override
  Future<ListPersonResponse> listPerson(
    ServiceCall call,
    ListPersonRequest request,
  ) async {
    final perPage = request.perPage;

    final persons = await repository.queryPersonSchemas();

    return ListPersonResponse(
      persons: persons.map(
        (e) => PersonGrpc(
          id: e.id,
          firstName: e.firstName,
          lastName: e.lastName,
          gender: e.gender,
          dateOfBirth: Timestamp.fromDateTime(e.dateOfBirth),
          email: e.email,
          account: AccountGrpc(id: e.account.id),
        ),
      ),
    );
  }

  @override
  Future<PersonGrpc> updatePerson(
    ServiceCall call,
    UpdatePersonRequest request,
  ) {
    // TODO: implement updatePerson
    throw UnimplementedError();
  }
}
