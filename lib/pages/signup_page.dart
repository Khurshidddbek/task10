import 'package:flutter/material.dart';
import 'package:task10/pages/home_page.dart';
import 'package:task10/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  static final String id = 'signup_page';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  _doSignUp() {
    String email = emailController.text;
    String password = passwordController.text;
    String name = nameController.text;

    if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty) {
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

            //TextField: Name
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: nameController,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
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
                  _doSignUp();
                },
                color: Colors.blue,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // Texts: 'Already have an account?' and 'Log in';
            Container(
              margin: EdgeInsets.all(20),
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text: Already have an account?
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),

                  // Sized Box
                  SizedBox(
                    width: 10,
                  ),

                  // Text: Log in
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignInPage.id);
                    },
                    child: Text(
                      'Log in',
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
