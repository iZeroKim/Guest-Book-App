import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(child:Column(children: [
          SizedBox(height: 10,),
        //Welcome text
        Text(
            "Hello Again!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
        ),
          SizedBox(height: 10,),
          Text(
              "Welcome back, you've been missed!",
              style: TextStyle(fontSize: 14.0)
          ),
        //email input field
        //password input field
        //sign in button
        //register link

      ]),)
      )
    );
  }
}
