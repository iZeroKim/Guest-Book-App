import 'package:flutter/material.dart';
import '../auth/login_page.dart';
import 'home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guest Book',
      debugShowCheckedModeBanner: false,
      home: Home(),
      );
  }
}

