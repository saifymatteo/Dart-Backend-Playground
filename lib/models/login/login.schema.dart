// ignore_for_file: annotate_overrides

part of 'login.dart';

extension LoginRepositories on Database {
  LoginSchemaRepository get loginSchemas => LoginSchemaRepository._(this);
}

abstract class LoginSchemaRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<LoginSchemaInsertRequest>,
        ModelRepositoryUpdate<LoginSchemaUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory LoginSchemaRepository._(Database db) = _LoginSchemaRepository;

  Future<LoginSchemaView?> queryLoginSchema(int id);
  Future<List<LoginSchemaView>> queryLoginSchemas([QueryParams? params]);
}

class _LoginSchemaRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<LoginSchemaInsertRequest>,
        RepositoryUpdateMixin<LoginSchemaUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements LoginSchemaRepository {
  _LoginSchemaRepository(super.db) : super(tableName: 'login', keyName: 'id');

  @override
  Future<LoginSchemaView?> queryLoginSchema(int id) {
    return queryOne(id, LoginSchemaViewQueryable());
  }

  @override
  Future<List<LoginSchemaView>> queryLoginSchemas([QueryParams? params]) {
    return queryMany(LoginSchemaViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<LoginSchemaInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "login" ( "token", "account_id" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.token)}:text, ${values.add(r.accountId)}:int8 )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<LoginSchemaUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "login"\n'
      'SET "token" = COALESCE(UPDATED."token", "login"."token"), "account_id" = COALESCE(UPDATED."account_id", "login"."account_id")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.token)}:text::text, ${values.add(r.accountId)}:int8::int8 )').join(', ')} )\n'
      'AS UPDATED("id", "token", "account_id")\n'
      'WHERE "login"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class LoginSchemaInsertRequest {
  LoginSchemaInsertRequest({
    required this.token,
    required this.accountId,
  });

  final String token;
  final int accountId;
}

class LoginSchemaUpdateRequest {
  LoginSchemaUpdateRequest({
    required this.id,
    this.token,
    this.accountId,
  });

  final int id;
  final String? token;
  final int? accountId;
}

class LoginSchemaViewQueryable extends KeyedViewQueryable<LoginSchemaView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "login".*, row_to_json("account".*) as "account"'
      'FROM "login"'
      'LEFT JOIN (${AccountSchemaViewQueryable().query}) "account"'
      'ON "login"."account_id" = "account"."id"';

  @override
  String get tableAlias => 'login';

  @override
  LoginSchemaView decode(TypedMap map) => LoginSchemaView(
      id: map.get('id'),
      token: map.get('token'),
      account: map.get('account', AccountSchemaViewQueryable().decoder));
}

class LoginSchemaView {
  LoginSchemaView({
    required this.id,
    required this.token,
    required this.account,
  });

  final int id;
  final String token;
  final AccountSchemaView account;
}