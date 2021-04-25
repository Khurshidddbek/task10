import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task10/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static final String id = 'splash_page';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _inTimer() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, SignInPage.id);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _inTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Center(
        child: Stack(
          children: [
            // Logo Center
            Center(
              child: Container(
                child: Image.asset(
                  'assets/images/amazon_logo.png',
                  height: 80,
                  width: 80,
                ),
              ),
            ),

            // Text: From Amazon
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('From Amazon',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
