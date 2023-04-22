// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum AccountScalarFieldEnum implements _i1.PrismaEnum {
  id,
  username,
  password;

  @override
  String? get originalName => null;
}

enum PersonScalarFieldEnum implements _i1.PrismaEnum {
  id,
  @JsonValue('first_name')
  firstName(r'first_name'),
  @JsonValue('last_name')
  lastName(r'last_name'),
  gender,
  @JsonValue('date_of_birth')
  dateOfBirth(r'date_of_birth'),
  email,
  @JsonValue('account_id')
  accountId(r'account_id');

  const PersonScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class AccountWhereInput implements _i1.JsonSerializable {
  const AccountWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.person,
  });

  factory AccountWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AccountWhereInputFromJson(json);

  final Iterable<AccountWhereInput>? AND;

  final Iterable<AccountWhereInput>? OR;

  final Iterable<AccountWhereInput>? NOT;

  final BigIntFilter? id;

  final StringFilter? username;

  final StringFilter? password;

  final PersonListRelationFilter? person;

  @override
  Map<String, dynamic> toJson() => _$AccountWhereInputToJson(this);
}

@_i1.jsonSerializable
class AccountOrderByWithRelationInput implements _i1.JsonSerializable {
  const AccountOrderByWithRelationInput({
    this.id,
    this.username,
    this.password,
    this.person,
  });

  factory AccountOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$AccountOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final PersonOrderByRelationAggregateInput? person;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class AccountWhereUniqueInput implements _i1.JsonSerializable {
  const AccountWhereUniqueInput({
    this.id,
    this.username,
  });

  factory AccountWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AccountWhereUniqueInputFromJson(json);

  final BigInt? id;

  final String? username;

  @override
  Map<String, dynamic> toJson() => _$AccountWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class AccountOrderByWithAggregationInput implements _i1.JsonSerializable {
  const AccountOrderByWithAggregationInput({
    this.id,
    this.username,
    this.password,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory AccountOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  @JsonKey(name: r'_count')
  final AccountCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final AccountAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final AccountMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final AccountMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final AccountSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class AccountScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const AccountScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
  });

  factory AccountScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<AccountScalarWhereWithAggregatesInput>? AND;

  final Iterable<AccountScalarWhereWithAggregatesInput>? OR;

  final Iterable<AccountScalarWhereWithAggregatesInput>? NOT;

  final BigIntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? username;

  final StringWithAggregatesFilter? password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class PersonWhereInput implements _i1.JsonSerializable {
  const PersonWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
    this.account,
  });

  factory PersonWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PersonWhereInputFromJson(json);

  final Iterable<PersonWhereInput>? AND;

  final Iterable<PersonWhereInput>? OR;

  final Iterable<PersonWhereInput>? NOT;

  final BigIntFilter? id;

  @JsonKey(name: r'first_name')
  final StringFilter? firstName;

  @JsonKey(name: r'last_name')
  final StringFilter? lastName;

  final StringFilter? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFilter? dateOfBirth;

  final StringNullableFilter? email;

  @JsonKey(name: r'account_id')
  final BigIntFilter? accountId;

  final AccountRelationFilter? account;

  @override
  Map<String, dynamic> toJson() => _$PersonWhereInputToJson(this);
}

@_i1.jsonSerializable
class PersonOrderByWithRelationInput implements _i1.JsonSerializable {
  const PersonOrderByWithRelationInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
    this.account,
  });

  factory PersonOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$PersonOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'first_name')
  final SortOrder? firstName;

  @JsonKey(name: r'last_name')
  final SortOrder? lastName;

  final SortOrder? gender;

  @JsonKey(name: r'date_of_birth')
  final SortOrder? dateOfBirth;

  final SortOrder? email;

  @JsonKey(name: r'account_id')
  final SortOrder? accountId;

  final AccountOrderByWithRelationInput? account;

  @override
  Map<String, dynamic> toJson() => _$PersonOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class PersonWhereUniqueInput implements _i1.JsonSerializable {
  const PersonWhereUniqueInput({
    this.id,
    this.email,
  });

  factory PersonWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$PersonWhereUniqueInputFromJson(json);

  final BigInt? id;

  final String? email;

  @override
  Map<String, dynamic> toJson() => _$PersonWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class PersonOrderByWithAggregationInput implements _i1.JsonSerializable {
  const PersonOrderByWithAggregationInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory PersonOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'first_name')
  final SortOrder? firstName;

  @JsonKey(name: r'last_name')
  final SortOrder? lastName;

  final SortOrder? gender;

  @JsonKey(name: r'date_of_birth')
  final SortOrder? dateOfBirth;

  final SortOrder? email;

  @JsonKey(name: r'account_id')
  final SortOrder? accountId;

  @JsonKey(name: r'_count')
  final PersonCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final PersonAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final PersonMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final PersonMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final PersonSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class PersonScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const PersonScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<PersonScalarWhereWithAggregatesInput>? AND;

  final Iterable<PersonScalarWhereWithAggregatesInput>? OR;

  final Iterable<PersonScalarWhereWithAggregatesInput>? NOT;

  final BigIntWithAggregatesFilter? id;

  @JsonKey(name: r'first_name')
  final StringWithAggregatesFilter? firstName;

  @JsonKey(name: r'last_name')
  final StringWithAggregatesFilter? lastName;

  final StringWithAggregatesFilter? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeWithAggregatesFilter? dateOfBirth;

  final StringNullableWithAggregatesFilter? email;

  @JsonKey(name: r'account_id')
  final BigIntWithAggregatesFilter? accountId;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class AccountCreateInput implements _i1.JsonSerializable {
  const AccountCreateInput({
    this.id,
    required this.username,
    required this.password,
    this.person,
  });

  factory AccountCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountCreateInputFromJson(json);

  final BigInt? id;

  final String username;

  final String password;

  final PersonCreateNestedManyWithoutAccountInput? person;

  @override
  Map<String, dynamic> toJson() => _$AccountCreateInputToJson(this);
}

@_i1.jsonSerializable
class AccountUncheckedCreateInput implements _i1.JsonSerializable {
  const AccountUncheckedCreateInput({
    this.id,
    required this.username,
    required this.password,
    this.person,
  });

  factory AccountUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountUncheckedCreateInputFromJson(json);

  final BigInt? id;

  final String username;

  final String password;

  final PersonUncheckedCreateNestedManyWithoutAccountInput? person;

  @override
  Map<String, dynamic> toJson() => _$AccountUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class AccountUpdateInput implements _i1.JsonSerializable {
  const AccountUpdateInput({
    this.id,
    this.username,
    this.password,
    this.person,
  });

  factory AccountUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final PersonUpdateManyWithoutAccountNestedInput? person;

  @override
  Map<String, dynamic> toJson() => _$AccountUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AccountUncheckedUpdateInput implements _i1.JsonSerializable {
  const AccountUncheckedUpdateInput({
    this.id,
    this.username,
    this.password,
    this.person,
  });

  factory AccountUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountUncheckedUpdateInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final PersonUncheckedUpdateManyWithoutAccountNestedInput? person;

  @override
  Map<String, dynamic> toJson() => _$AccountUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AccountCreateManyInput implements _i1.JsonSerializable {
  const AccountCreateManyInput({
    this.id,
    required this.username,
    required this.password,
  });

  factory AccountCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AccountCreateManyInputFromJson(json);

  final BigInt? id;

  final String username;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$AccountCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class AccountUpdateManyMutationInput implements _i1.JsonSerializable {
  const AccountUpdateManyMutationInput({
    this.id,
    this.username,
    this.password,
  });

  factory AccountUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateManyMutationInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$AccountUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class AccountUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const AccountUncheckedUpdateManyInput({
    this.id,
    this.username,
    this.password,
  });

  factory AccountUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AccountUncheckedUpdateManyInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class PersonCreateInput implements _i1.JsonSerializable {
  const PersonCreateInput({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
    required this.account,
  });

  factory PersonCreateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonCreateInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'first_name')
  final String firstName;

  @JsonKey(name: r'last_name')
  final String lastName;

  final String gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime dateOfBirth;

  final String? email;

  final AccountCreateNestedOneWithoutPersonInput account;

  @override
  Map<String, dynamic> toJson() => _$PersonCreateInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedCreateInput implements _i1.JsonSerializable {
  const PersonUncheckedCreateInput({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
    required this.accountId,
  });

  factory PersonUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonUncheckedCreateInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'first_name')
  final String firstName;

  @JsonKey(name: r'last_name')
  final String lastName;

  final String gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime dateOfBirth;

  final String? email;

  @JsonKey(name: r'account_id')
  final BigInt accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class PersonUpdateInput implements _i1.JsonSerializable {
  const PersonUpdateInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.account,
  });

  factory PersonUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonUpdateInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'first_name')
  final StringFieldUpdateOperationsInput? firstName;

  @JsonKey(name: r'last_name')
  final StringFieldUpdateOperationsInput? lastName;

  final StringFieldUpdateOperationsInput? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFieldUpdateOperationsInput? dateOfBirth;

  final NullableStringFieldUpdateOperationsInput? email;

  final AccountUpdateOneRequiredWithoutPersonNestedInput? account;

  @override
  Map<String, dynamic> toJson() => _$PersonUpdateInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedUpdateInput implements _i1.JsonSerializable {
  const PersonUncheckedUpdateInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonUncheckedUpdateInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'first_name')
  final StringFieldUpdateOperationsInput? firstName;

  @JsonKey(name: r'last_name')
  final StringFieldUpdateOperationsInput? lastName;

  final StringFieldUpdateOperationsInput? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFieldUpdateOperationsInput? dateOfBirth;

  final NullableStringFieldUpdateOperationsInput? email;

  @JsonKey(name: r'account_id')
  final BigIntFieldUpdateOperationsInput? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class PersonCreateManyInput implements _i1.JsonSerializable {
  const PersonCreateManyInput({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
    required this.accountId,
  });

  factory PersonCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$PersonCreateManyInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'first_name')
  final String firstName;

  @JsonKey(name: r'last_name')
  final String lastName;

  final String gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime dateOfBirth;

  final String? email;

  @JsonKey(name: r'account_id')
  final BigInt accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class PersonUpdateManyMutationInput implements _i1.JsonSerializable {
  const PersonUpdateManyMutationInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
  });

  factory PersonUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$PersonUpdateManyMutationInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'first_name')
  final StringFieldUpdateOperationsInput? firstName;

  @JsonKey(name: r'last_name')
  final StringFieldUpdateOperationsInput? lastName;

  final StringFieldUpdateOperationsInput? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFieldUpdateOperationsInput? dateOfBirth;

  final NullableStringFieldUpdateOperationsInput? email;

  @override
  Map<String, dynamic> toJson() => _$PersonUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const PersonUncheckedUpdateManyInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$PersonUncheckedUpdateManyInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'first_name')
  final StringFieldUpdateOperationsInput? firstName;

  @JsonKey(name: r'last_name')
  final StringFieldUpdateOperationsInput? lastName;

  final StringFieldUpdateOperationsInput? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFieldUpdateOperationsInput? dateOfBirth;

  final NullableStringFieldUpdateOperationsInput? email;

  @JsonKey(name: r'account_id')
  final BigIntFieldUpdateOperationsInput? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class BigIntFilter implements _i1.JsonSerializable {
  const BigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory BigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BigIntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class PersonListRelationFilter implements _i1.JsonSerializable {
  const PersonListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory PersonListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PersonListRelationFilterFromJson(json);

  final PersonWhereInput? every;

  final PersonWhereInput? some;

  final PersonWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$PersonListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class PersonOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const PersonOrderByRelationAggregateInput({this.$count});

  factory PersonOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AccountCountOrderByAggregateInput implements _i1.JsonSerializable {
  const AccountCountOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
  });

  factory AccountCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AccountAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const AccountAvgOrderByAggregateInput({this.id});

  factory AccountAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AccountMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const AccountMaxOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
  });

  factory AccountMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AccountMinOrderByAggregateInput implements _i1.JsonSerializable {
  const AccountMinOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
  });

  factory AccountMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AccountSumOrderByAggregateInput implements _i1.JsonSerializable {
  const AccountSumOrderByAggregateInput({this.id});

  factory AccountSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AccountSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const BigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory BigIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$BigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableFilter implements _i1.JsonSerializable {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class AccountRelationFilter implements _i1.JsonSerializable {
  const AccountRelationFilter({
    this.$is,
    this.isNot,
  });

  factory AccountRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AccountRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final AccountWhereInput? $is;

  final AccountWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$AccountRelationFilterToJson(this);
}

@_i1.jsonSerializable
class PersonCountOrderByAggregateInput implements _i1.JsonSerializable {
  const PersonCountOrderByAggregateInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'first_name')
  final SortOrder? firstName;

  @JsonKey(name: r'last_name')
  final SortOrder? lastName;

  final SortOrder? gender;

  @JsonKey(name: r'date_of_birth')
  final SortOrder? dateOfBirth;

  final SortOrder? email;

  @JsonKey(name: r'account_id')
  final SortOrder? accountId;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PersonAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const PersonAvgOrderByAggregateInput({
    this.id,
    this.accountId,
  });

  factory PersonAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'account_id')
  final SortOrder? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PersonMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const PersonMaxOrderByAggregateInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'first_name')
  final SortOrder? firstName;

  @JsonKey(name: r'last_name')
  final SortOrder? lastName;

  final SortOrder? gender;

  @JsonKey(name: r'date_of_birth')
  final SortOrder? dateOfBirth;

  final SortOrder? email;

  @JsonKey(name: r'account_id')
  final SortOrder? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PersonMinOrderByAggregateInput implements _i1.JsonSerializable {
  const PersonMinOrderByAggregateInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'first_name')
  final SortOrder? firstName;

  @JsonKey(name: r'last_name')
  final SortOrder? lastName;

  final SortOrder? gender;

  @JsonKey(name: r'date_of_birth')
  final SortOrder? dateOfBirth;

  final SortOrder? email;

  @JsonKey(name: r'account_id')
  final SortOrder? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PersonSumOrderByAggregateInput implements _i1.JsonSerializable {
  const PersonSumOrderByAggregateInput({
    this.id,
    this.accountId,
  });

  factory PersonSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PersonSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'account_id')
  final SortOrder? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class PersonCreateNestedManyWithoutAccountInput
    implements _i1.JsonSerializable {
  const PersonCreateNestedManyWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory PersonCreateNestedManyWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonCreateNestedManyWithoutAccountInputFromJson(json);

  final Iterable<PersonCreateWithoutAccountInput>? create;

  final Iterable<PersonCreateOrConnectWithoutAccountInput>? connectOrCreate;

  final PersonCreateManyAccountInputEnvelope? createMany;

  final Iterable<PersonWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonCreateNestedManyWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedCreateNestedManyWithoutAccountInput
    implements _i1.JsonSerializable {
  const PersonUncheckedCreateNestedManyWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory PersonUncheckedCreateNestedManyWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUncheckedCreateNestedManyWithoutAccountInputFromJson(json);

  final Iterable<PersonCreateWithoutAccountInput>? create;

  final Iterable<PersonCreateOrConnectWithoutAccountInput>? connectOrCreate;

  final PersonCreateManyAccountInputEnvelope? createMany;

  final Iterable<PersonWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUncheckedCreateNestedManyWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class BigIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const BigIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory BigIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$BigIntFieldUpdateOperationsInputFromJson(json);

  final BigInt? set;

  final BigInt? increment;

  final BigInt? decrement;

  final BigInt? multiply;

  final BigInt? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$BigIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class PersonUpdateManyWithoutAccountNestedInput
    implements _i1.JsonSerializable {
  const PersonUpdateManyWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory PersonUpdateManyWithoutAccountNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUpdateManyWithoutAccountNestedInputFromJson(json);

  final Iterable<PersonCreateWithoutAccountInput>? create;

  final Iterable<PersonCreateOrConnectWithoutAccountInput>? connectOrCreate;

  final Iterable<PersonUpsertWithWhereUniqueWithoutAccountInput>? upsert;

  final PersonCreateManyAccountInputEnvelope? createMany;

  final Iterable<PersonWhereUniqueInput>? set;

  final Iterable<PersonWhereUniqueInput>? disconnect;

  final Iterable<PersonWhereUniqueInput>? delete;

  final Iterable<PersonWhereUniqueInput>? connect;

  final Iterable<PersonUpdateWithWhereUniqueWithoutAccountInput>? update;

  final Iterable<PersonUpdateManyWithWhereWithoutAccountInput>? updateMany;

  final Iterable<PersonScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUpdateManyWithoutAccountNestedInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedUpdateManyWithoutAccountNestedInput
    implements _i1.JsonSerializable {
  const PersonUncheckedUpdateManyWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory PersonUncheckedUpdateManyWithoutAccountNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUncheckedUpdateManyWithoutAccountNestedInputFromJson(json);

  final Iterable<PersonCreateWithoutAccountInput>? create;

  final Iterable<PersonCreateOrConnectWithoutAccountInput>? connectOrCreate;

  final Iterable<PersonUpsertWithWhereUniqueWithoutAccountInput>? upsert;

  final PersonCreateManyAccountInputEnvelope? createMany;

  final Iterable<PersonWhereUniqueInput>? set;

  final Iterable<PersonWhereUniqueInput>? disconnect;

  final Iterable<PersonWhereUniqueInput>? delete;

  final Iterable<PersonWhereUniqueInput>? connect;

  final Iterable<PersonUpdateWithWhereUniqueWithoutAccountInput>? update;

  final Iterable<PersonUpdateManyWithWhereWithoutAccountInput>? updateMany;

  final Iterable<PersonScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUncheckedUpdateManyWithoutAccountNestedInputToJson(this);
}

@_i1.jsonSerializable
class AccountCreateNestedOneWithoutPersonInput implements _i1.JsonSerializable {
  const AccountCreateNestedOneWithoutPersonInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory AccountCreateNestedOneWithoutPersonInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountCreateNestedOneWithoutPersonInputFromJson(json);

  final AccountCreateWithoutPersonInput? create;

  final AccountCreateOrConnectWithoutPersonInput? connectOrCreate;

  final AccountWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountCreateNestedOneWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class AccountUpdateOneRequiredWithoutPersonNestedInput
    implements _i1.JsonSerializable {
  const AccountUpdateOneRequiredWithoutPersonNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory AccountUpdateOneRequiredWithoutPersonNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountUpdateOneRequiredWithoutPersonNestedInputFromJson(json);

  final AccountCreateWithoutPersonInput? create;

  final AccountCreateOrConnectWithoutPersonInput? connectOrCreate;

  final AccountUpsertWithoutPersonInput? upsert;

  final AccountWhereUniqueInput? connect;

  final AccountUpdateWithoutPersonInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountUpdateOneRequiredWithoutPersonNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntFilter implements _i1.JsonSerializable {
  const NestedBigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedBigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBigIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedBigIntWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedBigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedBigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableFilter implements _i1.JsonSerializable {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class PersonCreateWithoutAccountInput implements _i1.JsonSerializable {
  const PersonCreateWithoutAccountInput({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
  });

  factory PersonCreateWithoutAccountInput.fromJson(Map<String, dynamic> json) =>
      _$PersonCreateWithoutAccountInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'first_name')
  final String firstName;

  @JsonKey(name: r'last_name')
  final String lastName;

  final String gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime dateOfBirth;

  final String? email;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonCreateWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedCreateWithoutAccountInput implements _i1.JsonSerializable {
  const PersonUncheckedCreateWithoutAccountInput({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
  });

  factory PersonUncheckedCreateWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUncheckedCreateWithoutAccountInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'first_name')
  final String firstName;

  @JsonKey(name: r'last_name')
  final String lastName;

  final String gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime dateOfBirth;

  final String? email;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUncheckedCreateWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonCreateOrConnectWithoutAccountInput implements _i1.JsonSerializable {
  const PersonCreateOrConnectWithoutAccountInput({
    required this.where,
    required this.create,
  });

  factory PersonCreateOrConnectWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonCreateOrConnectWithoutAccountInputFromJson(json);

  final PersonWhereUniqueInput where;

  final PersonCreateWithoutAccountInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonCreateOrConnectWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonCreateManyAccountInputEnvelope implements _i1.JsonSerializable {
  const PersonCreateManyAccountInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory PersonCreateManyAccountInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$PersonCreateManyAccountInputEnvelopeFromJson(json);

  final Iterable<PersonCreateManyAccountInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonCreateManyAccountInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class PersonUpsertWithWhereUniqueWithoutAccountInput
    implements _i1.JsonSerializable {
  const PersonUpsertWithWhereUniqueWithoutAccountInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory PersonUpsertWithWhereUniqueWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUpsertWithWhereUniqueWithoutAccountInputFromJson(json);

  final PersonWhereUniqueInput where;

  final PersonUpdateWithoutAccountInput update;

  final PersonCreateWithoutAccountInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUpsertWithWhereUniqueWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonUpdateWithWhereUniqueWithoutAccountInput
    implements _i1.JsonSerializable {
  const PersonUpdateWithWhereUniqueWithoutAccountInput({
    required this.where,
    required this.data,
  });

  factory PersonUpdateWithWhereUniqueWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUpdateWithWhereUniqueWithoutAccountInputFromJson(json);

  final PersonWhereUniqueInput where;

  final PersonUpdateWithoutAccountInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUpdateWithWhereUniqueWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonUpdateManyWithWhereWithoutAccountInput
    implements _i1.JsonSerializable {
  const PersonUpdateManyWithWhereWithoutAccountInput({
    required this.where,
    required this.data,
  });

  factory PersonUpdateManyWithWhereWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUpdateManyWithWhereWithoutAccountInputFromJson(json);

  final PersonScalarWhereInput where;

  final PersonUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUpdateManyWithWhereWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonScalarWhereInput implements _i1.JsonSerializable {
  const PersonScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PersonScalarWhereInputFromJson(json);

  final Iterable<PersonScalarWhereInput>? AND;

  final Iterable<PersonScalarWhereInput>? OR;

  final Iterable<PersonScalarWhereInput>? NOT;

  final BigIntFilter? id;

  @JsonKey(name: r'first_name')
  final StringFilter? firstName;

  @JsonKey(name: r'last_name')
  final StringFilter? lastName;

  final StringFilter? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFilter? dateOfBirth;

  final StringNullableFilter? email;

  @JsonKey(name: r'account_id')
  final BigIntFilter? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class AccountCreateWithoutPersonInput implements _i1.JsonSerializable {
  const AccountCreateWithoutPersonInput({
    this.id,
    required this.username,
    required this.password,
  });

  factory AccountCreateWithoutPersonInput.fromJson(Map<String, dynamic> json) =>
      _$AccountCreateWithoutPersonInputFromJson(json);

  final BigInt? id;

  final String username;

  final String password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountCreateWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class AccountUncheckedCreateWithoutPersonInput implements _i1.JsonSerializable {
  const AccountUncheckedCreateWithoutPersonInput({
    this.id,
    required this.username,
    required this.password,
  });

  factory AccountUncheckedCreateWithoutPersonInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountUncheckedCreateWithoutPersonInputFromJson(json);

  final BigInt? id;

  final String username;

  final String password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountUncheckedCreateWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class AccountCreateOrConnectWithoutPersonInput implements _i1.JsonSerializable {
  const AccountCreateOrConnectWithoutPersonInput({
    required this.where,
    required this.create,
  });

  factory AccountCreateOrConnectWithoutPersonInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountCreateOrConnectWithoutPersonInputFromJson(json);

  final AccountWhereUniqueInput where;

  final AccountCreateWithoutPersonInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountCreateOrConnectWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class AccountUpsertWithoutPersonInput implements _i1.JsonSerializable {
  const AccountUpsertWithoutPersonInput({
    required this.update,
    required this.create,
  });

  factory AccountUpsertWithoutPersonInput.fromJson(Map<String, dynamic> json) =>
      _$AccountUpsertWithoutPersonInputFromJson(json);

  final AccountUpdateWithoutPersonInput update;

  final AccountCreateWithoutPersonInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountUpsertWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class AccountUpdateWithoutPersonInput implements _i1.JsonSerializable {
  const AccountUpdateWithoutPersonInput({
    this.id,
    this.username,
    this.password,
  });

  factory AccountUpdateWithoutPersonInput.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateWithoutPersonInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountUpdateWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class AccountUncheckedUpdateWithoutPersonInput implements _i1.JsonSerializable {
  const AccountUncheckedUpdateWithoutPersonInput({
    this.id,
    this.username,
    this.password,
  });

  factory AccountUncheckedUpdateWithoutPersonInput.fromJson(
          Map<String, dynamic> json) =>
      _$AccountUncheckedUpdateWithoutPersonInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() =>
      _$AccountUncheckedUpdateWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class PersonCreateManyAccountInput implements _i1.JsonSerializable {
  const PersonCreateManyAccountInput({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
  });

  factory PersonCreateManyAccountInput.fromJson(Map<String, dynamic> json) =>
      _$PersonCreateManyAccountInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'first_name')
  final String firstName;

  @JsonKey(name: r'last_name')
  final String lastName;

  final String gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime dateOfBirth;

  final String? email;

  @override
  Map<String, dynamic> toJson() => _$PersonCreateManyAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonUpdateWithoutAccountInput implements _i1.JsonSerializable {
  const PersonUpdateWithoutAccountInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
  });

  factory PersonUpdateWithoutAccountInput.fromJson(Map<String, dynamic> json) =>
      _$PersonUpdateWithoutAccountInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'first_name')
  final StringFieldUpdateOperationsInput? firstName;

  @JsonKey(name: r'last_name')
  final StringFieldUpdateOperationsInput? lastName;

  final StringFieldUpdateOperationsInput? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFieldUpdateOperationsInput? dateOfBirth;

  final NullableStringFieldUpdateOperationsInput? email;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUpdateWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedUpdateWithoutAccountInput implements _i1.JsonSerializable {
  const PersonUncheckedUpdateWithoutAccountInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
  });

  factory PersonUncheckedUpdateWithoutAccountInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUncheckedUpdateWithoutAccountInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'first_name')
  final StringFieldUpdateOperationsInput? firstName;

  @JsonKey(name: r'last_name')
  final StringFieldUpdateOperationsInput? lastName;

  final StringFieldUpdateOperationsInput? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFieldUpdateOperationsInput? dateOfBirth;

  final NullableStringFieldUpdateOperationsInput? email;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUncheckedUpdateWithoutAccountInputToJson(this);
}

@_i1.jsonSerializable
class PersonUncheckedUpdateManyWithoutPersonInput
    implements _i1.JsonSerializable {
  const PersonUncheckedUpdateManyWithoutPersonInput({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
  });

  factory PersonUncheckedUpdateManyWithoutPersonInput.fromJson(
          Map<String, dynamic> json) =>
      _$PersonUncheckedUpdateManyWithoutPersonInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'first_name')
  final StringFieldUpdateOperationsInput? firstName;

  @JsonKey(name: r'last_name')
  final StringFieldUpdateOperationsInput? lastName;

  final StringFieldUpdateOperationsInput? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTimeFieldUpdateOperationsInput? dateOfBirth;

  final NullableStringFieldUpdateOperationsInput? email;

  @override
  Map<String, dynamic> toJson() =>
      _$PersonUncheckedUpdateManyWithoutPersonInputToJson(this);
}

@_i1.jsonSerializable
class Account implements _i1.JsonSerializable {
  const Account({
    required this.id,
    required this.username,
    required this.password,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  final BigInt id;

  final String username;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@_i1.jsonSerializable
class Person implements _i1.JsonSerializable {
  const Person({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    this.email,
    required this.accountId,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  final BigInt id;

  @JsonKey(name: r'first_name')
  final String firstName;

  @JsonKey(name: r'last_name')
  final String lastName;

  final String gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime dateOfBirth;

  final String? email;

  @JsonKey(name: r'account_id')
  final BigInt accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

class AccountFluent<T> extends _i1.PrismaFluent<T> {
  const AccountFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Person>?> person({
    PersonWhereInput? where,
    Iterable<PersonOrderByWithRelationInput>? orderBy,
    PersonWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PersonScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'person',
          fields: fields,
          args: args,
        )
      ]),
      key: r'person',
    );
    final fields = PersonScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> person) =>
        person.map((Map person) => Person.fromJson(person.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  AccountCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AccountCountOutputType(query);
  }
}

class PersonFluent<T> extends _i1.PrismaFluent<T> {
  const PersonFluent(
    super.original,
    super.$query,
  );

  AccountFluent<Account> account() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account',
          fields: fields,
        )
      ]),
      key: r'account',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: account)'));
    return AccountFluent<Account>(
      future,
      query,
    );
  }
}

extension AccountModelDelegateExtension on _i1.ModelDelegate<Account> {
  AccountFluent<Account?> findUnique({required AccountWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueaccount',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : null);
    return AccountFluent<Account?>(
      future,
      query,
    );
  }

  AccountFluent<Account> findUniqueOrThrow(
      {required AccountWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueaccountOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueaccountOrThrow',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: account)'));
    return AccountFluent<Account>(
      future,
      query,
    );
  }

  AccountFluent<Account?> findFirst({
    AccountWhereInput? where,
    Iterable<AccountOrderByWithRelationInput>? orderBy,
    AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AccountScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstaccount',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : null);
    return AccountFluent<Account?>(
      future,
      query,
    );
  }

  AccountFluent<Account> findFirstOrThrow({
    AccountWhereInput? where,
    Iterable<AccountOrderByWithRelationInput>? orderBy,
    AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AccountScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstaccountOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstaccountOrThrow',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: account)'));
    return AccountFluent<Account>(
      future,
      query,
    );
  }

  Future<Iterable<Account>> findMany({
    AccountWhereInput? where,
    Iterable<AccountOrderByWithRelationInput>? orderBy,
    AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AccountScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyaccount',
    );
    final fields = AccountScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyaccount) => findManyaccount
        .map((Map findManyaccount) => Account.fromJson(findManyaccount.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  AccountFluent<Account> create({required AccountCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneaccount',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: account)'));
    return AccountFluent<Account>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<AccountCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyaccount',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyaccount) =>
        AffectedRowsOutput.fromJson(createManyaccount.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AccountFluent<Account?> update({
    required AccountUpdateInput data,
    required AccountWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneaccount',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : null);
    return AccountFluent<Account?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required AccountUpdateManyMutationInput data,
    AccountWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyaccount',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyaccount) =>
        AffectedRowsOutput.fromJson(updateManyaccount.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AccountFluent<Account> upsert({
    required AccountWhereUniqueInput where,
    required AccountCreateInput create,
    required AccountUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneaccount',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: account)'));
    return AccountFluent<Account>(
      future,
      query,
    );
  }

  AccountFluent<Account?> delete({required AccountWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneaccount',
    );
    final future = query(AccountScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Account.fromJson(json.cast<String, dynamic>())
            : null);
    return AccountFluent<Account?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({AccountWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyaccount',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyaccount) =>
        AffectedRowsOutput.fromJson(deleteManyaccount.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateAccount aggregate({
    AccountWhereInput? where,
    Iterable<AccountOrderByWithRelationInput>? orderBy,
    AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateaccount',
    );
    return AggregateAccount(query);
  }

  Future<Iterable<AccountGroupByOutputType>> groupBy({
    AccountWhereInput? where,
    Iterable<AccountOrderByWithAggregationInput>? orderBy,
    required Iterable<AccountScalarFieldEnum> by,
    AccountScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByaccount',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByaccount',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByaccount) =>
        groupByaccount.map((Map groupByaccount) =>
            AccountGroupByOutputType.fromJson(groupByaccount.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension PersonModelDelegateExtension on _i1.ModelDelegate<Person> {
  PersonFluent<Person?> findUnique({required PersonWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueperson',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Person.fromJson(json.cast<String, dynamic>()) : null);
    return PersonFluent<Person?>(
      future,
      query,
    );
  }

  PersonFluent<Person> findUniqueOrThrow(
      {required PersonWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquepersonOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquepersonOrThrow',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Person.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: person)'));
    return PersonFluent<Person>(
      future,
      query,
    );
  }

  PersonFluent<Person?> findFirst({
    PersonWhereInput? where,
    Iterable<PersonOrderByWithRelationInput>? orderBy,
    PersonWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PersonScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstperson',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Person.fromJson(json.cast<String, dynamic>()) : null);
    return PersonFluent<Person?>(
      future,
      query,
    );
  }

  PersonFluent<Person> findFirstOrThrow({
    PersonWhereInput? where,
    Iterable<PersonOrderByWithRelationInput>? orderBy,
    PersonWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PersonScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstpersonOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstpersonOrThrow',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Person.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: person)'));
    return PersonFluent<Person>(
      future,
      query,
    );
  }

  Future<Iterable<Person>> findMany({
    PersonWhereInput? where,
    Iterable<PersonOrderByWithRelationInput>? orderBy,
    PersonWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PersonScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyperson',
    );
    final fields = PersonScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyperson) => findManyperson
        .map((Map findManyperson) => Person.fromJson(findManyperson.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  PersonFluent<Person> create({required PersonCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneperson',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Person.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: person)'));
    return PersonFluent<Person>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<PersonCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyperson',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyperson) =>
        AffectedRowsOutput.fromJson(createManyperson.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  PersonFluent<Person?> update({
    required PersonUpdateInput data,
    required PersonWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneperson',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Person.fromJson(json.cast<String, dynamic>()) : null);
    return PersonFluent<Person?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required PersonUpdateManyMutationInput data,
    PersonWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyperson',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyperson) =>
        AffectedRowsOutput.fromJson(updateManyperson.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  PersonFluent<Person> upsert({
    required PersonWhereUniqueInput where,
    required PersonCreateInput create,
    required PersonUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneperson',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Person.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: person)'));
    return PersonFluent<Person>(
      future,
      query,
    );
  }

  PersonFluent<Person?> delete({required PersonWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneperson',
    );
    final future = query(PersonScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Person.fromJson(json.cast<String, dynamic>()) : null);
    return PersonFluent<Person?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({PersonWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyperson',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyperson) =>
        AffectedRowsOutput.fromJson(deleteManyperson.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregatePerson aggregate({
    PersonWhereInput? where,
    Iterable<PersonOrderByWithRelationInput>? orderBy,
    PersonWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateperson',
    );
    return AggregatePerson(query);
  }

  Future<Iterable<PersonGroupByOutputType>> groupBy({
    PersonWhereInput? where,
    Iterable<PersonOrderByWithAggregationInput>? orderBy,
    required Iterable<PersonScalarFieldEnum> by,
    PersonScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByperson',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByperson',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByperson) =>
        groupByperson.map((Map groupByperson) =>
            PersonGroupByOutputType.fromJson(groupByperson.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class AccountGroupByOutputType implements _i1.JsonSerializable {
  const AccountGroupByOutputType({
    this.id,
    this.username,
    this.password,
  });

  factory AccountGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$AccountGroupByOutputTypeFromJson(json);

  final BigInt? id;

  final String? username;

  final String? password;

  @override
  Map<String, dynamic> toJson() => _$AccountGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class PersonGroupByOutputType implements _i1.JsonSerializable {
  const PersonGroupByOutputType({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.accountId,
  });

  factory PersonGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$PersonGroupByOutputTypeFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'first_name')
  final String? firstName;

  @JsonKey(name: r'last_name')
  final String? lastName;

  final String? gender;

  @JsonKey(name: r'date_of_birth')
  final DateTime? dateOfBirth;

  final String? email;

  @JsonKey(name: r'account_id')
  final BigInt? accountId;

  @override
  Map<String, dynamic> toJson() => _$PersonGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateAccount {
  const AggregateAccount(this.$query);

  final _i1.PrismaFluentQuery $query;

  AccountCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AccountCountAggregateOutputType(query);
  }

  AccountAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return AccountAvgAggregateOutputType(query);
  }

  AccountSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return AccountSumAggregateOutputType(query);
  }

  AccountMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return AccountMinAggregateOutputType(query);
  }

  AccountMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return AccountMaxAggregateOutputType(query);
  }
}

class AggregatePerson {
  const AggregatePerson(this.$query);

  final _i1.PrismaFluentQuery $query;

  PersonCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return PersonCountAggregateOutputType(query);
  }

  PersonAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return PersonAvgAggregateOutputType(query);
  }

  PersonSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return PersonSumAggregateOutputType(query);
  }

  PersonMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return PersonMinAggregateOutputType(query);
  }

  PersonMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return PersonMaxAggregateOutputType(query);
  }
}

class AccountCountOutputType {
  const AccountCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> person() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'person',
          fields: fields,
        )
      ]),
      key: r'person',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AccountCountAggregateOutputType {
  const AccountCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AccountAvgAggregateOutputType {
  const AccountAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AccountSumAggregateOutputType {
  const AccountSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class AccountMinAggregateOutputType {
  const AccountMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class AccountMaxAggregateOutputType {
  const AccountMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class PersonCountAggregateOutputType {
  const PersonCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> firstName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'first_name',
          fields: fields,
        )
      ]),
      key: r'first_name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> lastName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_name',
          fields: fields,
        )
      ]),
      key: r'last_name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> gender() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'gender',
          fields: fields,
        )
      ]),
      key: r'gender',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> dateOfBirth() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date_of_birth',
          fields: fields,
        )
      ]),
      key: r'date_of_birth',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> accountId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_id',
          fields: fields,
        )
      ]),
      key: r'account_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class PersonAvgAggregateOutputType {
  const PersonAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> accountId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_id',
          fields: fields,
        )
      ]),
      key: r'account_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class PersonSumAggregateOutputType {
  const PersonSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> accountId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_id',
          fields: fields,
        )
      ]),
      key: r'account_id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class PersonMinAggregateOutputType {
  const PersonMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> firstName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'first_name',
          fields: fields,
        )
      ]),
      key: r'first_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lastName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_name',
          fields: fields,
        )
      ]),
      key: r'last_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> gender() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'gender',
          fields: fields,
        )
      ]),
      key: r'gender',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> dateOfBirth() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date_of_birth',
          fields: fields,
        )
      ]),
      key: r'date_of_birth',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<BigInt?> accountId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_id',
          fields: fields,
        )
      ]),
      key: r'account_id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class PersonMaxAggregateOutputType {
  const PersonMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> firstName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'first_name',
          fields: fields,
        )
      ]),
      key: r'first_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> lastName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_name',
          fields: fields,
        )
      ]),
      key: r'last_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> gender() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'gender',
          fields: fields,
        )
      ]),
      key: r'gender',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> dateOfBirth() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'date_of_birth',
          fields: fields,
        )
      ]),
      key: r'date_of_birth',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<BigInt?> accountId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_id',
          fields: fields,
        )
      ]),
      key: r'account_id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgogIG91dHB1dCAgID0gIi4uL2xpYi9nZW5lcmF0ZWQiCn0KCmRhdGFzb3VyY2UgZGIgewogIHByb3ZpZGVyID0gInBvc3RncmVzcWwiCiAgdXJsICAgICAgPSBlbnYoIkRBVEFCQVNFX1VSTCIpCn0KCm1vZGVsIGFjY291bnQgewogIGlkICAgICAgIEJpZ0ludCAgIEBpZChtYXA6ICJpZCIpIEBkZWZhdWx0KGF1dG9pbmNyZW1lbnQoKSkKICB1c2VybmFtZSBTdHJpbmcgICBAdW5pcXVlKG1hcDogInVzZXJuYW1lIikgQGRiLlZhckNoYXIoNTApCiAgcGFzc3dvcmQgU3RyaW5nICAgQGRiLlZhckNoYXIoNTApCiAgcGVyc29uICAgcGVyc29uW10KfQoKbW9kZWwgcGVyc29uIHsKICBpZCAgICAgICAgICAgIEJpZ0ludCAgIEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgZmlyc3RfbmFtZSAgICBTdHJpbmcgICBAZGIuVmFyQ2hhcig1MCkKICBsYXN0X25hbWUgICAgIFN0cmluZyAgIEBkYi5WYXJDaGFyKDUwKQogIGdlbmRlciAgICAgICAgU3RyaW5nICAgQGRiLlZhckNoYXIoNykKICBkYXRlX29mX2JpcnRoIERhdGVUaW1lIEBkYi5EYXRlCiAgZW1haWwgICAgICAgICBTdHJpbmc/ICBAdW5pcXVlKG1hcDogImVtYWlsIikgQGRiLlZhckNoYXIoMTUwKQogIGFjY291bnRfaWQgICAgQmlnSW50CiAgYWNjb3VudCAgICAgICBhY2NvdW50ICBAcmVsYXRpb24oZmllbGRzOiBbYWNjb3VudF9pZF0sIHJlZmVyZW5jZXM6IFtpZF0sIG9uVXBkYXRlOiBSZXN0cmljdCwgbWFwOiAiYWNjb3VudF9pZCIpCn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'D:\Developer\Git\Backend-Playground\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<Account> get account => _i1.ModelDelegate<Account>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Person> get person => _i1.ModelDelegate<Person>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
