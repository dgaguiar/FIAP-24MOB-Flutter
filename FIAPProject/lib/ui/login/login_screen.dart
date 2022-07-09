import 'package:flutter/material.dart';

import '../../presenter/login_presenter.dart';
import '../components/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  static const String id = '/login';
  const LoginScreen({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Divider(),
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Telefone",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(), //TextField
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                RoundedButton(
                  text: 'Entrar',
                  onPressed: presenter.onLoginButtonPressed,
                ),
                Divider(),
                RoundedButton(
                  text: 'Cadastrar',
                  onPressed: presenter.onCadastroButtonPressed,
                ),
                //TextField
              ],
            ),
          ),
        ));
  }
}
