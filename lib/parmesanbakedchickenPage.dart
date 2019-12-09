import 'package:flutter/material.dart';



class parmseanbakedchickenPage extends StatefulWidget {
  parmseanbakedchickenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _parmseanbakedchickenPageState createState() => _parmseanbakedchickenPageState();
}

class _parmseanbakedchickenPageState extends State<parmseanbakedchickenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Text("Parmesan Baked Chicken",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Rokkitt', fontSize: 30.0)),
            Text("88",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Rokkitt', fontSize: 90.0)),
            Text("Current Temp",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Rokkitt', fontSize: 30.0)),
            Expanded( child: ListView(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  Text(" Ingredients:",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 30.0)),
                  Text("  -1 lb. skinless and boneless chicken breasts ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -2 tablespoons olive oil",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1.5 tablespoons garlic powder",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -2 tablespoons lemon juice",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -ground black pepper ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -3 dashes cayenne pepper  ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1/4 teaspoon salt or more to taste ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1/2 cup freshly grated Parmesan cheese ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(" Recipe:",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 30.0)),
                  Text("  -Marinate the chicken breasts with olive oil, \n   garlic powder, lemon juice, black pepper, \n   cayenne pepper and salt. The marinade will be \n   paste-y and not liquidy, like the picture below. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -While the chicken breasts are marinating, \n   preheat oven to 400F. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Top the marinated chicken breasts with the \n   grated Parmesan cheese evenly. Bake the \n   chicken for about 20 minutes, until a meat \n   thermometer hits 165 degrees Fahrenheit when \n   inserted into the thickest part of the breasts. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Remove the Parmesan baked chicken from the \n   oven. Serve immediately with fresh lemon \n   wedges, squeeze the juice on the chicken for \n   extra flavors. You may also serve the chicken \n   with your favorite hot sauce.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
              
                ]),
            )],
        ));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
