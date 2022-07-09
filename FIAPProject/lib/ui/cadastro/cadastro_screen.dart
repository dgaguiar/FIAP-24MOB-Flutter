import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  static const String id = '/cadastro';

  const CadastroScreen({
    Key? key
  }) : super(key: key);

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
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Telefone",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(), //TextField
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha do usuário",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () => {
                      print("pressionei o botão"),
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ), //Text
                    color: Colors.blue,
                  ), //RaisedButton
                ), //TextField
              ],
            ),
          ),
        ));
  }
}
