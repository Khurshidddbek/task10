import 'package:flutter/material.dart';
import 'package:task10/pages/home_page.dart';
import 'package:task10/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static final String id = 'signin_page';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _doSignIn() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title text: Amazon
            Text(
              'Amazon',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontFamily: 'Billabong',
              ),
            ),

            //TextField: Email
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: emailController,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            //TextField: Password
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            // Flat Button: Log in
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  _doSignIn();
                },
                color: Colors.blue,
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // Texts: 'Don't have an account?' and 'Sign up';
            Container(
              margin: EdgeInsets.all(20),
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text: Don't have an account?
                  Text(
                    'Don`t have an account?',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),

                  // Sized Box
                  SizedBox(
                    width: 10,
                  ),

                  // Text: Sign Up
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignUpPage.id);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
