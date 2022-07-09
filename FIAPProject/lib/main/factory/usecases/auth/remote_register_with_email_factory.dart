
import 'package:fiapproject/data/auth/remote_register_login_with_email.dart';
import 'package:firebase_auth/firebase_auth.dart';


RemoteRegisterWithEmail makeRemoteRegisterWithEmail() => RemoteRegisterWithEmail(
  firebaseAuth: FirebaseAuth.instance,
);
