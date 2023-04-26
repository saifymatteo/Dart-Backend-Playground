///
//  Generated code. Do not modify.
//  source: services/person_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'person_service.pb.dart' as $3;
import '../models/person.pb.dart' as $4;
import '../google/protobuf/empty.pb.dart' as $2;
export 'person_service.pb.dart';

class PersonGrpcServiceClient extends $grpc.Client {
  static final _$getPerson =
      $grpc.ClientMethod<$3.GetPersonRequest, $4.PersonGrpc>(
          '/backend.PersonGrpcService/GetPerson',
          ($3.GetPersonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.PersonGrpc.fromBuffer(value));
  static final _$listPerson =
      $grpc.ClientMethod<$3.ListPersonRequest, $3.ListPersonResponse>(
          '/backend.PersonGrpcService/ListPerson',
          ($3.ListPersonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListPersonResponse.fromBuffer(value));
  static final _$createPerson =
      $grpc.ClientMethod<$4.PersonGrpc, $4.PersonGrpc>(
          '/backend.PersonGrpcService/CreatePerson',
          ($4.PersonGrpc value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.PersonGrpc.fromBuffer(value));
  static final _$updatePerson =
      $grpc.ClientMethod<$3.UpdatePersonRequest, $4.PersonGrpc>(
          '/backend.PersonGrpcService/UpdatePerson',
          ($3.UpdatePersonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.PersonGrpc.fromBuffer(value));
  static final _$deletePerson =
      $grpc.ClientMethod<$3.DeletePersonRequest, $2.Empty>(
          '/backend.PersonGrpcService/DeletePerson',
          ($3.DeletePersonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  PersonGrpcServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.PersonGrpc> getPerson($3.GetPersonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPerson, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListPersonResponse> listPerson(
      $3.ListPersonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPerson, request, options: options);
  }

  $grpc.ResponseFuture<$4.PersonGrpc> createPerson($4.PersonGrpc request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPerson, request, options: options);
  }

  $grpc.ResponseFuture<$4.PersonGrpc> updatePerson(
      $3.UpdatePersonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePerson, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deletePerson($3.DeletePersonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePerson, request, options: options);
  }
}

abstract class PersonGrpcServiceBase extends $grpc.Service {
  $core.String get $name => 'backend.PersonGrpcService';

  PersonGrpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetPersonRequest, $4.PersonGrpc>(
        'GetPerson',
        getPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPersonRequest.fromBuffer(value),
        ($4.PersonGrpc value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListPersonRequest, $3.ListPersonResponse>(
        'ListPerson',
        listPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListPersonRequest.fromBuffer(value),
        ($3.ListPersonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.PersonGrpc, $4.PersonGrpc>(
        'CreatePerson',
        createPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.PersonGrpc.fromBuffer(value),
        ($4.PersonGrpc value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePersonRequest, $4.PersonGrpc>(
        'UpdatePerson',
        updatePerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.UpdatePersonRequest.fromBuffer(value),
        ($4.PersonGrpc value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeletePersonRequest, $2.Empty>(
        'DeletePerson',
        deletePerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.DeletePersonRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.PersonGrpc> getPerson_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetPersonRequest> request) async {
    return getPerson(call, await request);
  }

  $async.Future<$3.ListPersonResponse> listPerson_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListPersonRequest> request) async {
    return listPerson(call, await request);
  }

  $async.Future<$4.PersonGrpc> createPerson_Pre(
      $grpc.ServiceCall call, $async.Future<$4.PersonGrpc> request) async {
    return createPerson(call, await request);
  }

  $async.Future<$4.PersonGrpc> updatePerson_Pre($grpc.ServiceCall call,
      $async.Future<$3.UpdatePersonRequest> request) async {
    return updatePerson(call, await request);
  }

  $async.Future<$2.Empty> deletePerson_Pre($grpc.ServiceCall call,
      $async.Future<$3.DeletePersonRequest> request) async {
    return deletePerson(call, await request);
  }

  $async.Future<$4.PersonGrpc> getPerson(
      $grpc.ServiceCall call, $3.GetPersonRequest request);
  $async.Future<$3.ListPersonResponse> listPerson(
      $grpc.ServiceCall call, $3.ListPersonRequest request);
  $async.Future<$4.PersonGrpc> createPerson(
      $grpc.ServiceCall call, $4.PersonGrpc request);
  $async.Future<$4.PersonGrpc> updatePerson(
      $grpc.ServiceCall call, $3.UpdatePersonRequest request);
  $async.Future<$2.Empty> deletePerson(
      $grpc.ServiceCall call, $3.DeletePersonRequest request);
}
