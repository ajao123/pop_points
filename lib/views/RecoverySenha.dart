import 'package:flutter/material.dart';

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
            Navigator.pop(context);
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
                buildTextFields(
                    "Email",
                    InputBorder.none,
                    Icon(Icons.person),
                    emailController,
                    false,
                    new BorderRadius.circular(30.0),
                    EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0), (value) {
                  if (value.isEmpty) return "Informe seu email";
                }),
                //OutlineInputBorder(borderRadius: new BorderRadius.all(new Radius.circular(30.0)))
                buildRaisedButton("RECUPERAR A SENHA", (){print('bola');}, EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0), _formKey),
              ],
            )),
      )
    );
  }
}

Widget buildRaisedButton(String text, Function function, EdgeInsets edgeInsets,
    GlobalKey<FormState> _formKey) {
  return Padding(
    padding: edgeInsets,
    child: RaisedButton(
      child:
      new Text(text, style: TextStyle(color: Colors.white, fontSize: 15.0)),
      onPressed: () {
        if (_formKey.currentState.validate()) {
          function();
        }
      },
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      color: Colors.greenAccent,
    ),
  );
}

Widget buildTextFields(
    String hintText,
    InputBorder border,
    Icon icon,
    TextEditingController controller,
    bool obscureText,
    BorderRadius borderRadius,

    EdgeInsets edgeInsets,
    FormFieldValidator validator) {
  return Padding(
      padding: edgeInsets,
      child: Container(
        padding: edgeInsets,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
        ),
        child: new TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            border: border,
            prefixIcon: icon,
          ),
          validator: validator,
        ),
      ));
}