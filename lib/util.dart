import 'package:flutter/material.dart';

Widget buildRaisedButtonPage(String text, BuildContext context,
    StatelessWidget widget, EdgeInsets edgeInsets) {
  return Padding(
    padding: edgeInsets,
    child: RaisedButton(
      child:
          new Text(text, style: TextStyle(color: Colors.white, fontSize: 15.0)),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
      },
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      color: Colors.greenAccent,
    ),
  );
}

Widget buildRaisedButton(
    String text, Function function, EdgeInsets edgeInsets) {
  return Padding(
    padding: edgeInsets,
    child: RaisedButton(
      child:
          new Text(text, style: TextStyle(color: Colors.white, fontSize: 15.0)),
      onPressed: () {
        function;
      },
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      color: Colors.greenAccent,
    ),
  );
}

Widget buildTextField(String hintText, InputBorder border, Icon icon,
    TextEditingController controller, Function function) {
  return Padding(
    padding: EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        border: border,
        prefixIcon: icon,
        hintText: hintText,
      ),
      onChanged: function,
    ),
  );
}

Widget buildTextFieldRegister(
    String hintText,
    InputBorder border,
    Icon icon,
    TextEditingController controller,
    Function function,
    bool obscureText,
    BorderRadius borderRadius,
    EdgeInsets edgeInsets) {
  return Padding(
      padding: edgeInsets,
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
        ),
        child: new TextField(
          obscureText: obscureText,
          decoration: InputDecoration(hintText: hintText, border: border),
        ),
      ));
}
