import 'package:flutter/material.dart';
import 'package:pop_points/login.dart';
import 'package:pop_points/util.dart';

class recoverySenhaPage extends StatefulWidget {
  @override
  _recoverySenhaPageState createState() => _recoverySenhaPageState();
}

class _recoverySenhaPageState extends State<recoverySenhaPage> {

  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          alignment: Alignment.centerLeft,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => loginPage()));
          },
        ),
        title: Text("Recuperar Senha"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff009788),
      body: SingleChildScrollView(
        child: Form(
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
                    EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0), (value) {
                  if (value.isEmpty) return "Informe seu email";
                }),
                //OutlineInputBorder(borderRadius: new BorderRadius.all(new Radius.circular(30.0)))
                buildRaisedButton("RECUPERAR A SENHA", null, EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0), _formKey),
              ],
            )),
      )
    );
  }
}
