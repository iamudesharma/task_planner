/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import

import 'dart:io';
import 'dart:typed_data' as typed_data;
import 'package:serverpod_client/serverpod_client.dart';
import 'protocol.dart';

class _EndpointExample extends EndpointRef {
  @override
  String get name => 'example';

  _EndpointExample(EndpointCaller caller) : super(caller);

  Future<String> hello(
    String name,
  ) async {
    return await caller.callServerEndpoint('example', 'hello', 'String', {
      'name': name,
    });
  }
}

class _EndpointTask extends EndpointRef {
  @override
  String get name => 'task';

  _EndpointTask(EndpointCaller caller) : super(caller);

  Future<void> addTask(
    Task task,
  ) async {
    return await caller.callServerEndpoint('task', 'addTask', 'void', {
      'task': task,
    });
  }
}

class Client extends ServerpodClient {
  late final _EndpointExample example;
  late final _EndpointTask task;

  Client(String host,
      {SecurityContext? context,
      ServerpodClientErrorCallback? errorHandler,
      AuthenticationKeyManager? authenticationKeyManager})
      : super(host, Protocol.instance,
            context: context,
            errorHandler: errorHandler,
            authenticationKeyManager: authenticationKeyManager) {
    example = _EndpointExample(this);
    task = _EndpointTask(this);
  }

  @override
  Map<String, EndpointRef> get endpointRefLookup => {
        'example': example,
        'task': task,
      };

  @override
  Map<String, ModuleEndpointCaller> get moduleLookup => {};
}
