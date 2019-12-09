import 'package:flutter/material.dart';
import 'package:thermometer/screens/poultryScreen.dart';
import 'screens/thermOnly.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thermometer',
      
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'ThermoRecipes'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title}); //: super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, MediaQuery.of(context).size.width*.05, 10),
                  child:
                  RaisedButton(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon()
                        Image.asset('assets/icons/beef.JPG', width: MediaQuery.of(context).size.width*.3, height: MediaQuery.of(context).size.height*.2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text('Beef'),
                        ),
                      ],
                    ),
                    onPressed: () {
                      //route to beef recipes screen
                    },
                  ),
                ),
                Padding(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width* .05, 20, 0, 10),
                  child:
                  RaisedButton(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/icons/pork.JPG', width: MediaQuery.of(context).size.width*.3, height: MediaQuery.of(context).size.height*.2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text('Pork'),
                        ),
                      ],
                    ),
                    onPressed: () {
                      //route to pork recipes screen
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, MediaQuery.of(context).size.width*.05, 10),
                  child:
                  RaisedButton(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon()
                        Image.asset('assets/icons/poultry.JPG', width: MediaQuery.of(context).size.width*.3, height: MediaQuery.of(context).size.height*.2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text('Poultry'),
                        ),
                      ],
                    ),
                    onPressed: () {
                      //route to beef recipes screen
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PoultryScreen()));
                    },
                  ),
                ),
                Padding(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width* .05, 20, 0, 10),
                  child:
                  RaisedButton(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/icons/fish.JPG', width: MediaQuery.of(context).size.width*.3, height: MediaQuery.of(context).size.height*.2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text('Fish'),
                        ),
                      ],
                    ),
                    onPressed: () {
                      //route to pork recipes screen
                    },
                  ),
                ),
              ],
            ),
          ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ThermOnlyScreen()));
        },
        tooltip: 'Thermometer Only',
        child: Icon(Icons.whatshot),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
