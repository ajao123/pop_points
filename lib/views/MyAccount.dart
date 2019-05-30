import 'package:flutter/material.dart';

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
          ),
        ],
        leading: IconButton(
          alignment: Alignment.centerLeft,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Minha Conta"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 150.0,
              width: 330.0,
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[

                  Text("POP CONTA"),
                  Text("EMG0507"),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("Pontos Liberados", style: TextStyle(color: Colors.green),),
                          Text("0,00", style: TextStyle(color: Colors.green),)
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Text("Pontos Lançados", style: TextStyle(color: Colors.yellow),),
                          Text("478,12", style: TextStyle(color: Colors.yellow),)
                        ],
                      )

                    ],
                  )

                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text("SERVIÇOS - FORNECEDOR POP F21", style: TextStyle(color: Colors.white),),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 100.0,
              padding: EdgeInsets.all(5.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HomePageListItem("Solicitar Resgate", Icon(Icons.check)),
                  HomePageListItem("Transferir Pontos", Icon(Icons.announcement)),
                  HomePageListItem("Localizar Fornecedores", Icon(Icons.explore)),
                  HomePageListItem("Add", Icon(Icons.add)),
                  HomePageListItem("format", Icon(Icons.format_align_center)),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text("HISTÓRICO",style: TextStyle(color: Colors.white)),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 100.0,
              padding: EdgeInsets.all(5.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HomePageListItem("Ver Extrato", Icon(Icons.graphic_eq)),
                  HomePageListItem("Meus Indicados", Icon(Icons.people)),
                  HomePageListItem("Historico de Pontos", Icon(Icons.access_time)),
                  HomePageListItem("Add", Icon(Icons.add)),
                  HomePageListItem("format", Icon(Icons.format_align_center)),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ContainerBottomNavigationBar("Shopping", Icon(Icons.shopping_cart)),
            ContainerBottomNavigationBar("Conta", Icon(Icons.assignment)),
            ContainerBottomNavigationBar("Registrar", Icon(Icons.monetization_on)),
            ContainerBottomNavigationBar("Alertas", Icon(Icons.notifications)),
            ContainerBottomNavigationBar("Perfil", Icon(Icons.person)),
          ],
        ),
      ),
      backgroundColor: const Color(0xff009788),

    );
  }
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

