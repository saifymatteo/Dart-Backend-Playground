///
//  Generated code. Do not modify.
//  source: account_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'models/account.pbjson.dart' as $0;
import 'google/protobuf/field_mask.pbjson.dart' as $1;
import 'google/protobuf/empty.pbjson.dart' as $2;

@$core.Deprecated('Use getAccountRequestDescriptor instead')
const GetAccountRequest$json = const {
  '1': 'GetAccountRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountRequestDescriptor = $convert.base64Decode('ChFHZXRBY2NvdW50UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use createAccountRequestDescriptor instead')
const CreateAccountRequest$json = const {
  '1': 'CreateAccountRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.backend.Account', '10': 'account'},
  ],
};

/// Descriptor for `CreateAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVBY2NvdW50UmVxdWVzdBIqCgdhY2NvdW50GAEgASgLMhAuYmFja2VuZC5BY2NvdW50UgdhY2NvdW50');
@$core.Deprecated('Use createAccountResponseDescriptor instead')
const CreateAccountResponse$json = const {
  '1': 'CreateAccountResponse',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.backend.Account', '10': 'account'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `CreateAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountResponseDescriptor = $convert.base64Decode('ChVDcmVhdGVBY2NvdW50UmVzcG9uc2USKgoHYWNjb3VudBgBIAEoCzIQLmJhY2tlbmQuQWNjb3VudFIHYWNjb3VudBIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use updateAccountRequestDescriptor instead')
const UpdateAccountRequest$json = const {
  '1': 'UpdateAccountRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.backend.Account', '10': 'account'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAccountRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVBY2NvdW50UmVxdWVzdBIqCgdhY2NvdW50GAEgASgLMhAuYmFja2VuZC5BY2NvdW50UgdhY2NvdW50EjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deleteAccountRequestDescriptor instead')
const DeleteAccountRequest$json = const {
  '1': 'DeleteAccountRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAccountRequestDescriptor = $convert.base64Decode('ChREZWxldGVBY2NvdW50UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbg==');
const $core.Map<$core.String, $core.dynamic> AccountServiceBase$json = const {
  '1': 'AccountService',
  '2': const [
    const {'1': 'GetAccount', '2': '.backend.GetAccountRequest', '3': '.backend.Account', '4': const {}},
    const {'1': 'CreateAccount', '2': '.backend.CreateAccountRequest', '3': '.backend.CreateAccountResponse', '4': const {}},
    const {'1': 'UpdateAccount', '2': '.backend.UpdateAccountRequest', '3': '.backend.Account', '4': const {}},
    const {'1': 'DeleteAccount', '2': '.backend.DeleteAccountRequest', '3': '.google.protobuf.Empty', '4': const {}},
    const {'1': 'Login', '2': '.backend.LoginRequest', '3': '.backend.LoginResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use accountServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AccountServiceBase$messageJson = const {
  '.backend.GetAccountRequest': GetAccountRequest$json,
  '.backend.Account': $0.Account$json,
  '.backend.CreateAccountRequest': CreateAccountRequest$json,
  '.backend.CreateAccountResponse': CreateAccountResponse$json,
  '.backend.UpdateAccountRequest': UpdateAccountRequest$json,
  '.google.protobuf.FieldMask': $1.FieldMask$json,
  '.backend.DeleteAccountRequest': DeleteAccountRequest$json,
  '.google.protobuf.Empty': $2.Empty$json,
  '.backend.LoginRequest': LoginRequest$json,
  '.backend.LoginResponse': LoginResponse$json,
};

/// Descriptor for `AccountService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List accountServiceDescriptor = $convert.base64Decode('Cg5BY2NvdW50U2VydmljZRI8CgpHZXRBY2NvdW50EhouYmFja2VuZC5HZXRBY2NvdW50UmVxdWVzdBoQLmJhY2tlbmQuQWNjb3VudCIAElAKDUNyZWF0ZUFjY291bnQSHS5iYWNrZW5kLkNyZWF0ZUFjY291bnRSZXF1ZXN0Gh4uYmFja2VuZC5DcmVhdGVBY2NvdW50UmVzcG9uc2UiABJCCg1VcGRhdGVBY2NvdW50Eh0uYmFja2VuZC5VcGRhdGVBY2NvdW50UmVxdWVzdBoQLmJhY2tlbmQuQWNjb3VudCIAEkgKDURlbGV0ZUFjY291bnQSHS5iYWNrZW5kLkRlbGV0ZUFjY291bnRSZXF1ZXN0GhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5IgASOAoFTG9naW4SFS5iYWNrZW5kLkxvZ2luUmVxdWVzdBoWLmJhY2tlbmQuTG9naW5SZXNwb25zZSIA');
