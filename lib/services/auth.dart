import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart' as app;

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> signInWithEmailAndPassword(app.User _user) async {
    try{
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: _user.email.toString(), password: _user.password.toString()
      );
      return null;

    } on FirebaseAuthException catch(e){
      return "${e.code}: ${e.message}";
    }
  }

  Future<String?> registerWithEmailAndPassword(app.User _user) async {
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: _user.email.toString(), password: _user.password.toString()
      );
      return null;

    } on FirebaseAuthException catch(e){
      return "${e.code}: ${e.message}";
    } catch(e){
      return "${e.toString()}";
    }
  }

  Future<String?> signOut() async{
    try{
      await _firebaseAuth.signOut();
      return null;
    } catch (e){
      return e.toString();
    }
  }

  app.User? _firebaseUser(User? user){
    return user != null ? app.User(email : user.email, password : ""): null;
  }
}