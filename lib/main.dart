import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'comic_reader_app',
    options: Platform.isMacOS || Platform.isIOS ?
        FirebaseOptions(
            apiKey: 'AIzaSyD8ffR2j8RNw3RSfqqbLg5Ov0BDqAAq8OM',
            appId: 'flutter_comic_reader',
            messagingSenderId: '322405126845',
            projectId: 'comic-reader-app-950a9',
            databaseURL: 'https://comic-reader-app-950a9-default-rtdb.firebaseio.com/',
        ) :
    FirebaseOptions(
      apiKey: 'AIzaSyD8ffR2j8RNw3RSfqqbLg5Ov0BDqAAq8OM',
      appId: '1:322405126845:android:45f689578ae933a84bddd4',
      messagingSenderId: '322405126845',
      projectId: 'comic-reader-app-950a9',
      databaseURL: 'https://comic-reader-app-950a9-default-rtdb.firebaseio.com/',
    )
  );

  runApp(ProviderScope(child: MyApp(app: app)));
}

class MyApp extends StatelessWidget {
  FirebaseApp app;
  MyApp({required this.app});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Comic Reader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Hello'),
      ),

    );
  }
}
