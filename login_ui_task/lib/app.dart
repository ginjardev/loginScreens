import 'package:flutter/material.dart';
import 'package:login_ui_task/home.dart';
import 'package:login_ui_task/login.dart';
import 'package:login_ui_task/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/home': (context) {
          return const MyHomePage();
        },
        '/login': ((context) => const LoginPage()),
        '/signup': (context) {
          return const SignupPage();
        }
      },
    );
  }
}
