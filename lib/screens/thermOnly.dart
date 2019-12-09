import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class ThermOnlyScreen extends StatefulWidget {
  @override
  _ThermOnlyScreenState createState() => _ThermOnlyScreenState();
}

class _ThermOnlyScreenState extends State<ThermOnlyScreen> {


  double targetTemp = 130.0;
  TextEditingController curTempCtrl = TextEditingController();
  int bleu = 120;
  int rare = 130;
  int medRare = 140;
  int med = 150;
  int medWell = 155;
  int well = 212;

  List<String> meats = ["Beef", "Pork", "Poultry", "Fish"];
  String meat;

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    curTempCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    

    if(curTempCtrl.text == "" || curTempCtrl.text == null ) {curTempCtrl.text = '0'; } 
    //Start of page
    return Scaffold(
      appBar: AppBar(
        title: Text('ThermoRecipes'),
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height*.1, 0, 0),
                child: 
                
              int.parse(curTempCtrl.text) < bleu
                  ? Text("Bleu")
                  : int.parse(curTempCtrl.text) < rare
                      ? Text("Rare")
                      : int.parse(curTempCtrl.text) < medRare
                          ? Text("Medium Rare")
                          : int.parse(curTempCtrl.text) < med
                              ? Text("Medium")
                              : int.parse(curTempCtrl.text) < medWell
                                  ? Text("Medium Well")
                                  : int.parse(curTempCtrl.text) < well 
                                  ? Text("Well Done") 
                                  : Text("Over Cooked"), 
                                  ),
                                  
                                  Padding(
                                      //Add padding and change text size
                                      padding: EdgeInsets.fromLTRB(
                                          MediaQuery.of(context).size.width *
                                              .37,
                                          0,
                                          MediaQuery.of(context).size.width *
                                              .37,
                                          20),
                                      child: //Container(
                                          //width: MediaQuery.of(context).size.width*.25,
                                          //height: MediaQuery.of(context).size.height*.1,
                                          // child:
                                          TextField(
                                        decoration: null,
                                        style: TextStyle(fontSize: 48),
                                        controller: curTempCtrl,
                                        onChanged: (v) {
                                          if (curTempCtrl.text ==
                                              targetTemp.toInt().toString()) {
                                            setState(() {
                                              FlutterRingtonePlayer.playAlarm(
                                                  looping: true);
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                      title: Text(
                                                          'Target Temp Reached!'),
                                                      actions: <Widget>[
                                                        FlatButton(
                                                          child: Text(
                                                              "Stop Alarm"),
                                                          onPressed: () {
                                                            FlutterRingtonePlayer
                                                                .stop();
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                      ]);
                                                },
                                              );
                                            });
                                          }
                                        },
                                      ),
                                      //),
                                    ),
              Text(
                'Current Temp',
                style: TextStyle(fontSize: 16),
              ),
              //],
              //)),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * .1,
                    20,
                    MediaQuery.of(context).size.width * .1,
                    10),
                child: Slider(
                  activeColor: Colors.lightBlueAccent,
                  min: 32,
                  max: 550,
                  //label: 'Target Temp',
                  onChanged: (sliderTemp) {
                    setState(() {
                      targetTemp = sliderTemp;
                    });
                    if (curTempCtrl.text == targetTemp.toInt().toString()) {
                      setState(() {
                        FlutterRingtonePlayer.playAlarm(looping: true);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('Target Temp Reached!'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("Stop Alarm"),
                                    onPressed: () {
                                      FlutterRingtonePlayer.stop();
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ]);
                          },
                        );
                      });
                    }
                  },
                  value: targetTemp,
                ),
              ),
              Container(
                width: 75.0,
                alignment: Alignment.center,
                child: Text('${targetTemp.toInt()}',
                    style: Theme.of(context).textTheme.display1),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: Text(
                  'Target Temp',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              DropdownButton(
                hint: Text('Meat Type'),
                value: meat,
                onChanged: (newValue) {
                  setState(() {
                    meat = newValue;
                  });
                },
                items: meats.map((meat) {
                  return DropdownMenuItem(
                    child: Text(meat),
                    value: meat,
                  );
                }).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
