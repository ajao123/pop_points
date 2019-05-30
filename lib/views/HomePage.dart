import 'package:flutter/material.dart';
import 'package:pop_points/Login.dart';
import 'package:pop_points/Register.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}


class _homePageState extends State<homePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff009788),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildRaisedButtonHomePage("FAZER LOGIN", context, loginPage(), EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
            buildRaisedButtonHomePage("CADASTRE-SE", context, registerPage(), EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
          ],
      ),
    );
  }
}
Widget buildRaisedButtonHomePage(String text, BuildContext context,
    StatefulWidget widget, EdgeInsets edgeInsets) {
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
