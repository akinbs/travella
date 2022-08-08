
import 'package:flutter/material.dart';

import 'package:travella_01/home.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:travella_01/welcome_page/auth/main_page.dart';
import 'package:travella_01/welcome_page/login_page.dart';
import 'firebase_options.dart';

void  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var mainColor = Colors.lightGreenAccent.shade700;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
