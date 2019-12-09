import 'package:flutter/material.dart';
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
            ),/*
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                 Container(
                  padding: const EdgeInsets.all(8),
                  child: //Stack(
                    //children: <Widget>[
                      Image.asset('icons/beef.jpg'),
                      //Text('Beef'),
                   // ],
                  //),
                  color: Colors.teal[100],
                ),
                /*Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Sound of screams but the'),
                  color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Who scream'),
                  color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution is coming...'),
                  color: Colors.teal[500],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution, they...'),
                  color: Colors.teal[600],
                ),*/
              ],
            ),*/
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
