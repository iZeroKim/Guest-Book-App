import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register_page.dart';
import '../home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailtext = TextEditingController();
  final _passwordtext = TextEditingController();

  bool _validateemail = false;
  bool _validatepassword= false;

  @override
  void dispose() {
    _emailtext.dispose();
    _passwordtext.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset : false,
        body: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'images/icon.png',
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 50,
            ),
            //Welcome text
            Text("Hello Again!",
                style: GoogleFonts.bebasNeue(
                  fontSize: 54,
                ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Welcome back, you've been missed!",
                style: TextStyle(fontSize: 18.0)),
            //email input field
            const SizedBox(
              height: 50,
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
                      controller: _passwordtext,
                      obscureText: true,
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child:TextButton(
                    child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  onPressed: () {
                    setState(() {
                      _emailtext.text.isEmpty ? _validateemail = true : _validateemail = false;
                      _passwordtext.text.isEmpty ? _validatepassword = true : _validatepassword = false;
                    });
                    if(!_validateemail && !_validatepassword){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                    }


                  },

                ),
                  ),
                )),
            //register link
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(
                  child:Text(
                    " Register now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
                  },

                ),
              ],
            )
          ]),
        )));
  }
}
