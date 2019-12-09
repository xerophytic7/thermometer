import 'package:flutter/material.dart';


class garlicbutterchickenbreastPage extends StatefulWidget {
  garlicbutterchickenbreastPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _garlicbutterchickenbreastPageState createState() => _garlicbutterchickenbreastPage();
}

class _garlicbutterchickenbreastPage extends State<garlicbutterchickenbreastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Text("Garlic Butter Chicken Breast",
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
                  Text("  -Boneless Skinless Chicken Breast ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -kosher salt and freshly ground black pepper",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -4 tbsp butter — melted",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -2 cloves garlic",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1 tbsp. olive oil ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1 tablespoon fresh parsley  ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1 teaspoon Italian seasoning ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1 teaspoon paprika ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(" Recipe:",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 30.0)),
                  Text("  -Preheat oven to 400°F. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Season chicken breast with salt, pepper, \n   paprika and set aside.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -In a small bowl mix together the butter, Italian \n   seasoning, parsley, and garlic. Set aside.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -In a cast iron skillet, heat olive oil over \n   medium heat.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -When the skillet is really hot add chicken \n   breast. Sear until golden. It’s about 1-2 minutes \n   each side. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Pour garlic butter mixture over the chicken \n   breast.  ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Place skillet in the oven and cook until cooked \n   through. It’s about 20-30 minutes or until \n   chicken breasts gets to an internal \n   temperature \n   of 165F.1 teaspoon Italian seasoning ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Remove from the oven. Using a spoon, pour \n   some of the butter sauce left in \n   the skillet onto the chicken breast before \n   serving. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                ]),
            )],
        ));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
