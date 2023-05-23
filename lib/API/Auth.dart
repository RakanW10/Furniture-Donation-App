import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<UserCredential> signUp({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } catch (e) {
      rethrow;
    }
  }

  static Future<UserCredential> signIn({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } catch (e) {
      rethrow;
    }
  }

  // static Future<UserCredential> signInWithGoogle({
  //   required String emailAddress,
  //   required String password,
  // }) async {
  //   try {
  //     final credential = await _auth.signInWithProvider(GoogleAuthProvider());
  //     return credential;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
