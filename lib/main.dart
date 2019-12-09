import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Chicken Recipes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(widget.title),
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
                    Text("Prosciutto Wrapped\nChicken Breast", textAlign: TextAlign.center,),
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
