import 'package:flutter/material.dart';
import 'package:thermometer/screens/garlicbutterchickenbreastPage.dart';
import 'package:thermometer/screens/parmesanbakedchickenPage.dart';
import 'package:thermometer/screens/prosciuttowrappedchickenbreastScreen.dart';
//import 'screens/thermOnly.dart';

class PoultryScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PoultryScreenState createState() => _PoultryScreenState();
}

class _PoultryScreenState extends State<PoultryScreen> {
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
   return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ThermoRecipes"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text("Chicken", textAlign: TextAlign.center,  style: TextStyle(fontFamily: 'Rokkitt',  fontSize: 30.0)),
             Wrap(direction: Axis.horizontal, children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width*.05, 10),
              child:
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pictures/recipe1.JPG',
                        width: 125, height: 125),
                    Wrap(direction: Axis.vertical, children:[
                    Text("Garlic Butter\nChicken Breast", textAlign: TextAlign.center),
                  ],)],
                ),
                onPressed: () {
                  //route to recipe and thermometer screen
                   Navigator.push(context, MaterialPageRoute(builder: (context) => garlicbutterchickenbreastPage()));
                },
              ),),
              Padding(padding: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width*.05, 10),
              child:
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pictures/recipe2.JPG',
                        width: 125, height: 125),
                        Wrap(direction: Axis.horizontal, children:[
                    Text("Parmesan Baked\nChicken Breast", textAlign: TextAlign.center,),
                  ],)],
                ),
                onPressed: () {
                  //route to recipe and thermometer screen
                   Navigator.push(context, MaterialPageRoute(builder: (context) => parmseanbakedchickenPage()));
                },
              )),
              Padding(padding: EdgeInsets.fromLTRB(20, 20, MediaQuery.of(context).size.width*.05, 10),
              child:
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pictures/recipe3.JPG',
                        width: 125, height: 125),
                        Wrap(direction: Axis.horizontal, children:[
                    Text("Prosciutto \nWrapped\nChicken Breast", textAlign: TextAlign.center,),
                  ],)],
                ),
                onPressed: () {
                  //route to recipe and thermometer screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => prosciuttowrappedchickenbreastPage()));
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