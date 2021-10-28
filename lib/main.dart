// @dart=2.9
import 'package:eduance/auth/auth_screen.dart';
import 'package:eduance/auth/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_auth_animation/auth_screen.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore: duplicate_import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white38,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(
              vertical: defaultPadding * 1.2, horizontal: defaultPadding),
        ),
      ),
      home: AuthScreen(),
    );
  }
}
