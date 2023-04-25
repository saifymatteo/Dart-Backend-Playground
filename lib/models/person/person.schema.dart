// ignore_for_file: annotate_overrides

part of 'person.dart';

extension PersonRepositories on Database {
  PersonSchemaRepository get personSchemas => PersonSchemaRepository._(this);
}

abstract class PersonSchemaRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<PersonSchemaInsertRequest>,
        ModelRepositoryUpdate<PersonSchemaUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory PersonSchemaRepository._(Database db) = _PersonSchemaRepository;

  Future<PersonSchemaView?> queryPersonSchema(int id);
  Future<List<PersonSchemaView>> queryPersonSchemas([QueryParams? params]);
}

class _PersonSchemaRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<PersonSchemaInsertRequest>,
        RepositoryUpdateMixin<PersonSchemaUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements PersonSchemaRepository {
  _PersonSchemaRepository(super.db) : super(tableName: 'person', keyName: 'id');

  @override
  Future<PersonSchemaView?> queryPersonSchema(int id) {
    return queryOne(id, PersonSchemaViewQueryable());
  }

  @override
  Future<List<PersonSchemaView>> queryPersonSchemas([QueryParams? params]) {
    return queryMany(PersonSchemaViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<PersonSchemaInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "person" ( "first_name", "last_name", "gender", "date_of_birth", "email", "account_id" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.firstName)}:text, ${values.add(r.lastName)}:text, ${values.add(r.gender)}:text, ${values.add(r.dateOfBirth)}:timestamp, ${values.add(r.email)}:text, ${values.add(r.accountId)}:int8 )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<PersonSchemaUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "person"\n'
      'SET "first_name" = COALESCE(UPDATED."first_name", "person"."first_name"), "last_name" = COALESCE(UPDATED."last_name", "person"."last_name"), "gender" = COALESCE(UPDATED."gender", "person"."gender"), "date_of_birth" = COALESCE(UPDATED."date_of_birth", "person"."date_of_birth"), "email" = COALESCE(UPDATED."email", "person"."email"), "account_id" = COALESCE(UPDATED."account_id", "person"."account_id")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.firstName)}:text::text, ${values.add(r.lastName)}:text::text, ${values.add(r.gender)}:text::text, ${values.add(r.dateOfBirth)}:timestamp::timestamp, ${values.add(r.email)}:text::text, ${values.add(r.accountId)}:int8::int8 )').join(', ')} )\n'
      'AS UPDATED("id", "first_name", "last_name", "gender", "date_of_birth", "email", "account_id")\n'
      'WHERE "person"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class PersonSchemaInsertRequest {
  PersonSchemaInsertRequest({
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
    required this.accountId,
  });

  final String firstName;
  final String lastName;
  final String gender;
  final DateTime dateOfBirth;
  final String? email;
  final int accountId;
}

class PersonSchemaUpdateRequest {
  PersonSchemaUpdateRequest({
    required this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  final int id;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final DateTime? dateOfBirth;
  final String? email;
  final int? accountId;
}

class PersonSchemaViewQueryable extends KeyedViewQueryable<PersonSchemaView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "person".*, row_to_json("account".*) as "account"'
      'FROM "person"'
      'LEFT JOIN (${AccountSchemaViewQueryable().query}) "account"'
      'ON "person"."account_id" = "account"."id"';

  @override
  String get tableAlias => 'person';

  @override
  PersonSchemaView decode(TypedMap map) => PersonSchemaView(
      id: map.get('id'),
      firstName: map.get('first_name'),
      lastName: map.get('last_name'),
      gender: map.get('gender'),
      dateOfBirth: map.get('date_of_birth'),
      email: map.getOpt('email'),
      account: map.get('account', AccountSchemaViewQueryable().decoder));
}

class PersonSchemaView {
  PersonSchemaView({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
    required this.account,
  });

  final int id;
  final String firstName;
  final String lastName;
  final String gender;
  final DateTime dateOfBirth;
  final String? email;
  final AccountSchemaView account;
}
