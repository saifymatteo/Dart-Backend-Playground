///
//  Generated code. Do not modify.
//  source: account_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'account_service.pb.dart' as $3;
import 'models/account.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $2;
import 'account_service.pbjson.dart';

export 'account_service.pb.dart';

abstract class AccountServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Account> getAccount($pb.ServerContext ctx, $3.GetAccountRequest request);
  $async.Future<$3.CreateAccountResponse> createAccount($pb.ServerContext ctx, $3.CreateAccountRequest request);
  $async.Future<$0.Account> updateAccount($pb.ServerContext ctx, $3.UpdateAccountRequest request);
  $async.Future<$2.Empty> deleteAccount($pb.ServerContext ctx, $3.DeleteAccountRequest request);
  $async.Future<$3.LoginResponse> login($pb.ServerContext ctx, $3.LoginRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetAccount': return $3.GetAccountRequest();
      case 'CreateAccount': return $3.CreateAccountRequest();
      case 'UpdateAccount': return $3.UpdateAccountRequest();
      case 'DeleteAccount': return $3.DeleteAccountRequest();
      case 'Login': return $3.LoginRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetAccount': return this.getAccount(ctx, request as $3.GetAccountRequest);
      case 'CreateAccount': return this.createAccount(ctx, request as $3.CreateAccountRequest);
      case 'UpdateAccount': return this.updateAccount(ctx, request as $3.UpdateAccountRequest);
      case 'DeleteAccount': return this.deleteAccount(ctx, request as $3.DeleteAccountRequest);
      case 'Login': return this.login(ctx, request as $3.LoginRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AccountServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AccountServiceBase$messageJson;
}

