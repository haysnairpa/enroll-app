import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in with email & password
  Future<UserCredential?> signInWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password
        );
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register with email & password
  Future<UserCredential?> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw 'Weak Password';
      } else if (e.code == 'email-already-in-use') {
        throw 'That email already in user';
      } else if (e.code == 'invalid-email') {
        throw 'Invalid Email';
      }
      throw e.message ?? 'Error occured';
    }
  }

  //Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}