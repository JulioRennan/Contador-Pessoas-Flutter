import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Contador de Pessoas",
      home:Home()));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  void _mudaPessoa(int delta){
    setState(() {
      _people+=delta;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ), Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child:  FlatButton(
                    child: Text("+1",
                        style: TextStyle(fontSize: 40.0,color: Colors.white)),
                    onPressed: () {
                      _mudaPessoa(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child:  FlatButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 40.0,color: Colors.white)),
                    onPressed: () {
                      _mudaPessoa(-1);
                      },
                  ),
                )
              ],
            ),
            Text(
                "Pode Entrar!",
                style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.italic,fontSize: 30.0)

            )

          ],
        )


      ],
    );
  }
}
