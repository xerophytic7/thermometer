import 'package:flutter/material.dart';
class PorkScreen extends StatefulWidget {
  @override
  _PorkScreenState createState() => _PorkScreenState();
}

class _PorkScreenState extends State<PorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("Pork Screen"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text("Pork", textAlign: TextAlign.center,  style: TextStyle(fontFamily: 'Rokkitt',  fontSize: 30.0)),
             Wrap(direction: Axis.horizontal, children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width*.05, 10),
              child:
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pictures/honeygarlicpork.JPG',
                        width: 125, height: 125),
                    Wrap(direction: Axis.vertical, children:[
                    Text("Honey Garlic\nPork", textAlign: TextAlign.center),
                  ],)],
                ),
                onPressed: () {
                  //route to recipe and thermometer screen
                },
              ),),
              Padding(padding: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width*.05, 10),
              child:
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pictures/sweetandsourpork.JPG',
                        width: 125, height: 125),
                        Wrap(direction: Axis.horizontal, children:[
                    Text("Sweet and Sour\nPork", textAlign: TextAlign.center,),
                  ],)],
                ),
                onPressed: () {
                  //route to recipe and thermometer screen
                },
              )),
            ])
          ],
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
