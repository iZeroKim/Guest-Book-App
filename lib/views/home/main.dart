import 'package:flutter/material.dart';

import '../auth/login_page.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Guest Book',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
