import 'package:flutter/material.dart';
import 'package:pop_points/home_page.dart';
import 'package:pop_points/util.dart';

class registerPage extends StatefulWidget {
  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> _codigoKey = GlobalKey<FormState>();
  bool _value1 = false, _value2 = false;

  TextEditingController codigoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController repeatSenhaController = TextEditingController();

  @override
  void setState(fn) {
    super.setState(fn); // TODO: implement setState
  }

  void _setValue1(bool value) => setState(() => this._value1 = value);

  void _setValue2(bool value) => setState(() => this._value2 = value);

  void _register() {
    String mensagem;
    // flutter defined function
    if (_value1 && _value2) {
      mensagem = "Registro efetuado com sucesso.";
    } else if (!_value1 && !_value2) {
      mensagem =
          "Termos de Uso não foram aceitos e sua maioridade não foi confirmada.";
    } else if (!_value1) {
      mensagem = "Termos de Uso não foram aceitos.";
    } else if (!_value2) {
      mensagem = "Sua maioridade não foi confirmada.";
    }
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: new Text(mensagem),
            actions: <Widget>[
              new FlatButton(
                child: Icon(Icons.cancel),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  void _verificarIndicante() {
    String mensagem="foifoifoi";
    // flutter defined function
    if (codigoController.toString() == null) {
      mensagem = "Indicante Válido";
    } else {
      mensagem = "Indicante Inválido";
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: new Text(mensagem),
            actions: <Widget>[
              new FlatButton(
                child: Icon(Icons.cancel),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

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
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Form(
                  key: _codigoKey,
                    child:Row(
                      children: <Widget>[
                        new Flexible(
                          child: buildTextFieldRegister(
                              "Código de Indicação",
                              InputBorder.none,
                              null,
                              codigoController,
                              null,
                              false,
                              new BorderRadius.circular(30.0),
                              EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0), null),
                        ),
                        new Flexible(
                          child: buildRaisedButton(
                              "Verificar Indicante",
                              _verificarIndicante,
                              EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                              _codigoKey),
                        ),
                      ],
                    )
                ),
                buildTextFieldRegister(
                    "Nome Completo",
                    InputBorder.none,
                    null,
                    nameController,
                    null,
                    false,
                    new BorderRadius.circular(30.0),
                    EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0), (value) {
                  if (value.isEmpty) return "Insira seu nome completo";
                }),
                buildTextFieldRegister(
                    "Email",
                    InputBorder.none,
                    null,
                    emailController,
                    null,
                    false,
                    new BorderRadius.circular(30.0),
                    EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0), (value) {
                  if (value.isEmpty) return "Informe seu Email";
                }),
                buildTextFieldRegister(
                    "Informe sua senha",
                    InputBorder.none,
                    null,
                    senhaController,
                    null,
                    true,
                    new BorderRadius.circular(30.0),
                    EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0), (value) {
                  if (value.isEmpty) return "Informe sua senha";
                }),
                buildTextFieldRegister(
                    "Repetir a senha",
                    InputBorder.none,
                    null,
                    repeatSenhaController,
                    null,
                    true,
                    new BorderRadius.circular(30.0),
                    EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0), (value) {
                  if (value.isEmpty) return "Informe sua senha novamente";
                }),
                Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: _value1,
                          onChanged: _setValue1,
                          activeColor: Colors.black,
                        ),
                        Text(
                          "Li, e estou de acordo com os Termos de Uso",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: _value2,
                          onChanged: _setValue2,
                          activeColor: Colors.black,
                        ),
                        Text("Sou maior de 18 anos",
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
                buildRaisedButton("CONFIRMAR", _register,
                    EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0), _formKey),
              ],
            )),
      ),
    );
  }
}
