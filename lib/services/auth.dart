import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:mining_ap/models/user_models.dart';

class Auth {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  UserAcc? _firebaseUser(auth.User? user) {
    return user != null ? UserAcc(user.uid, user.email) : null;
  }

  Stream<UserAcc?> get user {
    return _firebaseAuth.authStateChanges().map(_firebaseUser);
  }

  Future<UserAcc?> handleSignInemail(String email, String Password) async {
    final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: Password);
    return _firebaseUser(result.user);
  }

  Future<void> logout() async {
    return await _firebaseAuth.signOut();
  }
}
