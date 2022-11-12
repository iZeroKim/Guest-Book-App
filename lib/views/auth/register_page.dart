import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
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
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
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
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            //sign in button
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                )),
            //register link
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Already have an account?",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  " Login now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            )
          ]),
        )));
  }
}
