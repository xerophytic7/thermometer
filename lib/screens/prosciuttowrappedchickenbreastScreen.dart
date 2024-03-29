import 'package:flutter/material.dart';

class prosciuttowrappedchickenbreastPage extends StatefulWidget {
  //prosciuttowrappedchickenbreastPage({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _prosciuttowrappedchickenbreastPageState createState() => _prosciuttowrappedchickenbreastPageState();
}

class _prosciuttowrappedchickenbreastPageState extends State<prosciuttowrappedchickenbreastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("ThermoRecipes"),
        ),
        body: Column(
          children: <Widget>[
            Text("Prosciutto Wrapped Chicken Breast",
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
                  Text("  -4 boneless skinless chicken breasts ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -Kosher salt and freshly-cracked black pepper",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -8–12 slices prosciutto",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -4 tablespoons melted butter, divided",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1 clove garlic, pressed or minced",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1 tablespoon finely-chopped fresh sage",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -pinch of crushed red pepper flakes",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text("  -1/4 cup dry white wine",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(" Recipe:",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 30.0)),
                  Text("  -To brine the chicken: Simply fill a large bowl \n   with 1 quart of warm water and 1/4 cup kosher \n   salt.  Stir to combine until most of the salt is \n   absorbed.  Add the chicken breasts and let them \n   sit in the mixture to brine for 15 minutes.  Or \n   you can also also cover the bowl and refrigerate for up to 6 hours.  Remove the chicken breasts \n   from the brine, rinse them with cold water, then \n   pat them dry with some paper towels.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -To cook the chicken: Heat oven to 450°F.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Wrap each chicken breast with 2-3 slices of \n   prosciutto, so that \n   the prosciutto covers most of the chicken.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Place the chicken breasts in a single layer in a \n   large baking dish.  Brush the chicken breasts \n   evenly with 1 tablespoon of the melted butter.  \n   Then season both sides of the chicken breasts \n   with a quick pinch of salt and pepper, then lay \n   the chicken back in a single layer in the \n   baking dish.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Bake for 18-20* minutes, or until the chicken \n   is cooked through and no longer pink.  If you \n    use a cooking thermometer to measure the \n   temperature thickest part of the breast, it \n   should be between 160-170°F.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Once the chicken is cooked, remove the pan \n   from the oven and loosely cover the pan with \n   aluminum foil.  Let the chicken rest for at least \n   5-10 minutes.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Meanwhile, as the chicken is cooking, add the \n   remaining 3 tablespoons butter to a small \n   sauté pan, along with the garlic, sage and \n   crushed red pepper flakes.  Sauté over \n   medium-low for 6-8 minutes, or until the sage \n   starts to get slightly crispy.  Slowly add in the \n   white wine, and simmer for 5 more minutes.  \n   Remove from heat.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
                  Text(
                      "  -Once the chicken and sauce are ready to go, \n   spoon the sage-butter sauce evenly over the \n   baked chicken breasts.  Then serve \n   immediately with fresh lemon wedges, \n   sprinkled with optional garnishes if you’d like. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20.0)),
              
                ]),
            )],
        ));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
