import 'package:flutter/material.dart';
import 'package:pop_points/home_page.dart';
import 'package:pop_points/util.dart';

class registerPage extends StatelessWidget {
  bool _value1 = false, _value2 = false;

  void _setValue1(bool value) => (() => this._value1 = value);

  void _setValue2(bool value) => (() => this._value2 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          alignment: Alignment.centerLeft,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => homePage()));
          },
        ),
        title: Text("Cadastro Rapido"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff009788),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                new Flexible(
                  child: buildTextFieldRegister(
                      "Código de Indicação",
                      InputBorder.none,
                      null,
                      null,
                      null,
                      false,
                      new BorderRadius.circular(30.0),
                      EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0)),
                ),
                new Flexible(
                  child: buildRaisedButton("Verificar Indicante", null, EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0)),
                ),

              ],
            ),
            buildTextFieldRegister(
                "Nome Completo",
                InputBorder.none,
                null,
                null,
                null,
                false,
                new BorderRadius.circular(30.0),
                EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
            buildTextFieldRegister(
                "Email",
                InputBorder.none,
                null,
                null,
                null,
                false,
                new BorderRadius.circular(30.0),
                EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
            buildTextFieldRegister(
                "Informe sua senha",
                InputBorder.none,
                null,
                null,
                null,
                true,
                new BorderRadius.circular(30.0),
                EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
            buildTextFieldRegister(
                "Repetir a senha",
                InputBorder.none,
                null,
                null,
                null,
                true,
                new BorderRadius.circular(30.0),
                EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
            Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: _value1,
                      onChanged: _setValue1,
                    ),
                    Text(
                      "Li, e estou de acordo com os Termos de Uso",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: _value2,
                      onChanged: _setValue2,
                    ),
                    Text("Sou maior de 18 anos",
                        style: TextStyle(color: Colors.white))
                  ],
                )),
            buildRaisedButton("CONFIRMAR", null, EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),

          ],
        ),
      ),
    );
  }
}
