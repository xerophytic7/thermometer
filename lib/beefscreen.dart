import 'package:flutter/material.dart';
class beefscreen extends StatefulWidget {
  @override
  _beefscreenState createState() => _beefscreenState();
}

class _beefscreenState extends State<beefscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("Beef Screen"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text("Beef", textAlign: TextAlign.center,  style: TextStyle(fontFamily: 'Rokkitt',  fontSize: 30.0)),
             Wrap(direction: Axis.horizontal, children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width*.05, 10),
              child:
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pictures/chinesebroccolibeef.JPG',
                        width: 125, height: 125),
                    Wrap(direction: Axis.vertical, children:[
                    Text("Chinese Broccoli\nBeef", textAlign: TextAlign.center),
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
                    Image.asset('assets/pictures/beefwellington.JPG',
                        width: 125, height: 125),
                        Wrap(direction: Axis.horizontal, children:[
                    Text("Beef Wellington", textAlign: TextAlign.center,),
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
