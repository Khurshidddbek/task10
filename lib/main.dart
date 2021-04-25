import 'package:flutter/material.dart';
import 'package:task10/pages/home_page.dart';
import 'package:task10/pages/signin_page.dart';
import 'package:task10/pages/signup_page.dart';
import 'package:task10/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SplashPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SplashPage.id: (context) => SplashPage(),
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
      },
    );
  }
}
