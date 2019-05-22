import 'package:flutter/material.dart';
import 'package:pop_points/login.dart';
import 'package:pop_points/util.dart';

class recoverySenhaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff009788),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildTextField("Email", null, Icon(Icons.person), null, null),
          //OutlineInputBorder(borderRadius: new BorderRadius.all(new Radius.circular(30.0)))
          buildRaisedButton("RECUPERAR A SENHA", null, EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
          buildRaisedButtonPage("Voltar?", context, loginPage(), EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
        ],
      ),
    );
  }
}
