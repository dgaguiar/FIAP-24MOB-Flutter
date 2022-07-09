import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/usecases/register_with_email.dart';

class RemoteRegisterWithEmail extends RegisterWithEmail {
  RemoteRegisterWithEmail({required this.firebaseAuth});

  final FirebaseAuth firebaseAuth;

  @override
  Future<User?> execute(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (error) {
      return null;
    }
  }
}
