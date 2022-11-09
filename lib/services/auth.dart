import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart' as app;

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(app.User _user) async {
    try{
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: _user.email.toString(), password: _user.password.toString()
      );
      return userCredential.user;

    } on FirebaseAuthException catch(e){
      return e.code;
    }
  }
}