import 'package:fiapproject/main/factory/pages/flowers/flower_screen_factory.dart';
import 'package:fiapproject/main/factory/pages/login/login_screen_factory.dart';
import 'package:fiapproject/ui/flower/flower_screen.dart';
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
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.id,
      getPages: [
        GetPage(name: LoginScreen.id, page: makeLoginScreen),
        GetPage(name: FlowersScreen.id, page: makeFlowerScreen),
      ],
    );
  }
}