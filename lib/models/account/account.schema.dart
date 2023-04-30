// ignore_for_file: annotate_overrides

part of 'account.dart';

extension AccountRepositories on Database {
  AccountSchemaRepository get accountSchemas => AccountSchemaRepository._(this);
}

abstract class AccountSchemaRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<AccountSchemaInsertRequest>,
        ModelRepositoryUpdate<AccountSchemaUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory AccountSchemaRepository._(Database db) = _AccountSchemaRepository;

  Future<AccountSchemaView?> queryAccountSchema(int id);
  Future<List<AccountSchemaView>> queryAccountSchemas([QueryParams? params]);
}

class _AccountSchemaRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<AccountSchemaInsertRequest>,
        RepositoryUpdateMixin<AccountSchemaUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements AccountSchemaRepository {
  _AccountSchemaRepository(super.db) : super(tableName: 'account', keyName: 'id');

  @override
  Future<AccountSchemaView?> queryAccountSchema(int id) {
    return queryOne(id, AccountSchemaViewQueryable());
  }

  @override
  Future<List<AccountSchemaView>> queryAccountSchemas([QueryParams? params]) {
    return queryMany(AccountSchemaViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<AccountSchemaInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "account" ( "username", "password", "created_at" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.username)}:text, ${values.add(r.password)}:text, ${values.add(r.createdAt)}:timestamp )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<AccountSchemaUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "account"\n'
      'SET "username" = COALESCE(UPDATED."username", "account"."username"), "password" = COALESCE(UPDATED."password", "account"."password"), "created_at" = COALESCE(UPDATED."created_at", "account"."created_at")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.username)}:text::text, ${values.add(r.password)}:text::text, ${values.add(r.createdAt)}:timestamp::timestamp )').join(', ')} )\n'
      'AS UPDATED("id", "username", "password", "created_at")\n'
      'WHERE "account"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class AccountSchemaInsertRequest {
  AccountSchemaInsertRequest({
    required this.username,
    required this.password,
    required this.createdAt,
  });

  final String username;
  final String password;
  final DateTime createdAt;
}

class AccountSchemaUpdateRequest {
  AccountSchemaUpdateRequest({
    required this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  final int id;
  final String? username;
  final String? password;
  final DateTime? createdAt;
}

class AccountSchemaViewQueryable extends KeyedViewQueryable<AccountSchemaView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "account".*'
      'FROM "account"';

  @override
  String get tableAlias => 'account';

  @override
  AccountSchemaView decode(TypedMap map) => AccountSchemaView(
      id: map.get('id'),
      username: map.get('username'),
      password: map.get('password'),
      createdAt: map.get('created_at'));
}

class AccountSchemaView {
  AccountSchemaView({
    required this.id,
    required this.username,
    required this.password,
    required this.createdAt,
  });

  final int id;
  final String username;
  final String password;
  final DateTime createdAt;
}
