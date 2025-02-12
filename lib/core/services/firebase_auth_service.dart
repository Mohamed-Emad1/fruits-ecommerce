import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitshup/core/errors/custom_exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        //
        throw CustomExceptions(message: 'Weak password');
      } else if (e.code == 'email-already-in-use') {
        // log('The account already exists for that email.');
        throw CustomExceptions(message: 'Email already in use');
      } else {
        throw CustomExceptions(message: 'An error occurred');
      }
    } catch (e) {
      // print(e);
      //
      throw CustomExceptions(message: 'An error occurred');
    }
  }
}
