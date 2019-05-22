import 'package:flutter/material.dart';
import 'package:pop_points/recoverySenha.dart';
import 'package:pop_points/home_page.dart';
import 'package:pop_points/util.dart';

class loginPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff009788),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          buildTextField("Email", null, null, null, null),

          buildTextField("Senha", null, null, null, null),

          buildRaisedButton("ENTRAR", null, EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),

          buildRaisedButtonPage("Esqueceu a senha?", context, recoverySenhaPage(), EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
          buildRaisedButtonPage("Voltar?", context, homePage(), EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),

        ],
      ),
    );
  }
}
