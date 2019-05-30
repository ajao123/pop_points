import 'package:flutter/material.dart';
import 'package:pop_points/views/RecoverySenha.dart';
import 'package:pop_points/components/Components.dart';
import 'package:pop_points/views/MyAccount.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          alignment: Alignment.centerLeft,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Login"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff009788),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        buildTextFields(
                            "Email",
                            InputBorder.none,
                            Icon(Icons.person),
                            emailController,
                            false,
                            new BorderRadius.circular(30.0),
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                (value){
                              if (value.isEmpty) return "Insira seu login";
                            }),
                        buildTextFields(
                            "Senha",
                            InputBorder.none,
                            Icon(Icons.lock),
                            senhaController,
                            false,
                            new BorderRadius.circular(30.0),
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                (value) {
                              if (value.isEmpty) return "Insira sua senha";
                            }),
                        Padding(
                          padding:  EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0),
                          child: RaisedButton(
                            child:
                            new Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => myAccountPage()));
                              }
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            color: Colors.greenAccent,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0),
                          child: RaisedButton(
                            child:
                            new Text("Esqueceu a senha?", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => recoverySenhaPage()));
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            color: Colors.greenAccent,
                          ),
                        )

                      ],
                    ),
                  ),

                ],
              )
          )
    );
  }
}
