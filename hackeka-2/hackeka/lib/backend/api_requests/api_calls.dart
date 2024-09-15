import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendFullPromptSimulacionDeInversionChatGPTCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic? promptJson,
    dynamic? functionsJson,
    dynamic? functionCallJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final functions = _serializeJson(functionsJson);
    final functionCall = _serializeJson(functionCallJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo-0613",
  "messages": ${prompt},
  "functions": ${functions},
  "function_call": ${functionCall}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt Simulacion de inversion ChatGPT',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic? aPIMessage(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.function_call''',
      );
  static int? createdTime(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
}

class MakeApiCall {
  static Future<ApiCallResponse> call({
    String? file = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file": "${file}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Make Api',
      apiUrl: 'https://hook.us1.make.com/vj4kquaz96k0v4ywg5fj4dcnnsuj46my',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NessieGetAllCustomersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'NessieGetAllCustomers',
      apiUrl:
          'http://api.nessieisreal.com/customers?key=632cca6d716912fcd5aad4d4d654e4e6',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NessieCreateCustomerCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "first_name": "Fer",
  "last_name": "Tirado",
  "address": {
    "street_number": "123",
    "street_name": "Main St",
    "city": "New York",
    "state": "NY",
    "zip": "10001"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NessieCreateCustomer',
      apiUrl:
          'http://api.nessieisreal.com/customers?key=632cca6d716912fcd5aad4d4d654e4e6',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NessiCreateAccountCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "type": "Credit Card",
  "nickname": "Primary Credit Card",
  "rewards": 1000,
  "balance": 5000
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NessiCreateAccount',
      apiUrl:
          'http://api.nessieisreal.com/customers/66e6514b9683f20dd5189c93/accounts?key=632cca6d716912fcd5aad4d4d654e4e6',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NessieGetAllAccountsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'NessieGetAllAccounts',
      apiUrl:
          'http://api.nessieisreal.com/accounts?type=Credit%20Card&key=632cca6d716912fcd5aad4d4d654e4e6',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetInfoForOneAccountCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetInfoForOneAccount',
      apiUrl:
          'http://api.nessieisreal.com/accounts/66e653329683f20dd5189c96?key=632cca6d716912fcd5aad4d4d654e4e6',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? balance(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.balance''',
      ));
}

class GetAllAccountsForOneIDFerIDCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllAccountsForOneIDFerID',
      apiUrl:
          'http://api.nessieisreal.com/customers/66e6514b9683f20dd5189c93/accounts?key=632cca6d716912fcd5aad4d4d654e4e6',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateDepositForFerAccountCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateDepositForFerAccount',
      apiUrl:
          'http://api.nessieisreal.com/accounts/66e653589683f20dd5189c97/deposits?key=632cca6d716912fcd5aad4d4d654e4e6',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
