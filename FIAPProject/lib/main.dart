import 'package:fiapproject/domain/usecases/login_with_email.dart';
import 'package:fiapproject/domain/usecases/register_with_email.dart';
import 'package:fiapproject/presenter/login_presenter.dart';
import 'package:fiapproject/ui/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const LoginWithEmail mail = LoginWithEmail();
    const LoginPresenter presenter = LoginPresenter(
        loginWithEmail: LoginWithEmail(),
        registerWithEmail: RegisterWithEmail()
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(presenter: null),
    );
  }
}