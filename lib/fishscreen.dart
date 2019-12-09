import 'package:flutter/material.dart';
class fishscreen extends StatefulWidget {
  @override
  _fishscreenState createState() => _fishscreenState();
}

class _fishscreenState extends State<fishscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("Fish Screen"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text("Fish", textAlign: TextAlign.center,  style: TextStyle(fontFamily: 'Rokkitt',  fontSize: 30.0)),
             Wrap(direction: Axis.horizontal, children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width*.05, 10),
              child:
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pictures/butteredcod.JPG',
                        width: 125, height: 125),
                    Wrap(direction: Axis.vertical, children:[
                    Text("Buttered Cod", textAlign: TextAlign.center),
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
                    Image.asset('assets/pictures/lemoncaperhalibut.JPG',
                        width: 125, height: 125),
                        Wrap(direction: Axis.horizontal, children:[
                    Text("Lemon Caper\nHalibut", textAlign: TextAlign.center,),
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
