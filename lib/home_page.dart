import 'package:flutter/material.dart';
import 'package:pop_points/login.dart';
import 'package:pop_points/register.dart';
import 'package:pop_points/util.dart';

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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildRaisedButtonPage("FAZER LOGIN", context, loginPage(), EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
                buildRaisedButtonPage("CADASTRE-SE", context, registerPage(), EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 10.0)),
              ],
            ),
          )

        ],
      ),
    );
  }
}