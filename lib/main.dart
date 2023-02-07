import 'package:flutter/material.dart';
import 'package:practice/dashboard/dashboard.dart';
import 'package:practice/loginPage/loginPage.dart';
import 'package:practice/registerPage/registerPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice',
      theme: ThemeData(fontFamily: 'Montserrat'),
      initialRoute: '/register',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) =>  RegisterPage(),
        '/': (context) => const Dashboard(),
      },
    );
  }
}
