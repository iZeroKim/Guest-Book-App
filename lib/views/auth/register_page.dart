import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nametext = TextEditingController();
  final _emailtext = TextEditingController();
  final _passwordtext = TextEditingController();
  bool _validatename = false;
  bool _validateemail = false;
  bool _validatepassword= false;

  @override
  void dispose() {
    _nametext.dispose();
    _emailtext.dispose();
    _passwordtext.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset : true,
        body: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/icon.png',
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            //Welcome text
            Text("Hello!",
                style: GoogleFonts.bebasNeue(
                  fontSize: 54,
                ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("You are most welcome!",
                style: TextStyle(fontSize: 18.0)),
            //email input field
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _nametext,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                        labelText: "Name",
                        errorText: _validatename ? 'Name can\'t be empty' : null,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _emailtext,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        labelText: "Email",
                        errorText: _validateemail ? 'Email can\'t be empty' : null,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),

            //password input field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      controller: _passwordtext,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        labelText: "Password",
                        errorText: _validatepassword ? 'Password can\'t be empty' : null,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            //sign in button
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      onPressed: () {
                        setState(() {
                          _nametext.text.isEmpty
                              ? _validatename = true
                              : _validatename = false;
                          _emailtext.text.isEmpty
                              ? _validateemail = true
                              : _validateemail = false;
                          _passwordtext.text.isEmpty
                              ? _validatepassword = true
                              : _validatepassword = false;
                        });
                        if (!_validatename &&
                            !_validateemail &&
                            !_validatepassword) {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        }
                      },
                    ),
                  ),
                )),
            //register link
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text("Already have an account?",
                    style: TextStyle(fontWeight: FontWeight.bold)),

                TextButton(
                  child:Text(
                    " Login now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                  },

                ),
              ],
            )
          ]),
        )));
  }
}
