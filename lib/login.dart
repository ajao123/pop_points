import 'package:flutter/material.dart';
import 'package:pop_points/recoverySenha.dart';
import 'package:pop_points/home_page.dart';
import 'package:pop_points/util.dart';
import 'package:pop_points/myAccount.dart';

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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => homePage()));
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
                        buildTextFieldRegister(
                            "Email",
                            InputBorder.none,
                            Icon(Icons.person),
                            emailController,
                            null,
                            false,
                            new BorderRadius.circular(30.0),
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                (value){
                              if (value.isEmpty) return "Insira seu login";
                            }),
                        buildTextFieldRegister(
                            "Senha",
                            InputBorder.none,
                            Icon(Icons.lock),
                            senhaController,
                            null,
                            false,
                            new BorderRadius.circular(30.0),
                            EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                                (value) {
                              if (value.isEmpty) return "Insira sua senha";
                            }),
                        buildRaisedLoginPage("ENTRAR", null,
                            EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0), _formKey, context, myAccountPage()),
                        buildRaisedButtonPage(
                            "Esqueceu a senha?",
                            context,
                            recoverySenhaPage(),
                            EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
                      ],
                    ),
                  ),

                ],
              )
          )
    );
  }
}
