import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:task_planer_client/task_planer_client.dart';
import 'package:flutter/material.dart';

import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:task_planer_client/task_planer_client.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.I.registerSingleton<Client>(
    Client(
      'http://localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    ),
  );

  GetIt.I.registerSingleton<SessionManager>(SessionManager(
    caller: GetIt.I.get<Client>().modules.auth,
  ));

  await GetIt.I<SessionManager>().initialize();

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // sessionManager.;
    GetIt.I<SessionManager>()
        .addListener(_changedSessionStatus); // TODO: implement initState
    super.initState();
  }

  void _changedSessionStatus() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInWithEmailButton(
        caller: GetIt.I.get<Client>().modules.auth,
      ),
    );
  }
}
