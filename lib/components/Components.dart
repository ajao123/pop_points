import 'package:flutter/material.dart';

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

Widget HomePageListItem(String text, Icon icon) {
  return Container(
    width: 112.0,
    child: Card(
      borderOnForeground: true,
      color: const Color(0xff009788),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(icon: icon, onPressed: (){},color: Colors.white,),
              Text(text)
            ],
          )
        ],
      ),
    ),
  );
}
Widget ContainerBottomNavigationBar(String text, Icon icon){
  return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(icon: icon, onPressed: (){}),
          Text(text)
        ],
      )
  );
}