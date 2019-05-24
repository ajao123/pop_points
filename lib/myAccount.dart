import 'package:flutter/material.dart';
import 'package:pop_points/login.dart';

class myAccountPage extends StatefulWidget {
  @override
  _myAccountPageState createState() => _myAccountPageState();
}

class _myAccountPageState extends State<myAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: (){},
          )
        ],
        title: Text("Minha Conta"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
                  Text("Shopping")
                ],
              )
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.assignment), onPressed: (){}),
                    Text("Conta")
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.monetization_on), onPressed: (){}),
                    Text("Registrar")
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.add_alert), onPressed: (){}),
                    Text("Alertas")
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.person), onPressed: (){}),
                    Text("Perfil")
                  ],
                )
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff009788),

    );
  }
}
