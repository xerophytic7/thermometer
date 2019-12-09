import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class ThermOnlyScreen extends StatefulWidget {
  @override
  _ThermOnlyScreenState createState() => _ThermOnlyScreenState();
}

class _ThermOnlyScreenState extends State<ThermOnlyScreen> {
  double targetTemp = 130.0;
  TextEditingController curTempCtrl = TextEditingController();
  
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    curTempCtrl.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
   
    //Start of page
    return Scaffold(
      appBar: AppBar(
        title: Text('ThermoRecipes'),
      ),
      body: Center(
          //mainAxisAlignment: MainAxisAlignment.center,

          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          /*Container(
              width: MediaQuery.of(context).size.width * .80,
              height: MediaQuery.of(context).size.height * .35,
              color: Colors.white70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[*/
                  Padding(
                    //Add padding and change text size
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width*.37, MediaQuery.of(context).size.height * .15, MediaQuery.of(context).size.width*.37, 20),
                    child: //Container(
                      //width: MediaQuery.of(context).size.width*.25,
                      //height: MediaQuery.of(context).size.height*.1,
                     // child:
                      TextField(
                     
                      decoration: null,
                      style: TextStyle(fontSize: 48),
                      controller: curTempCtrl,
                      onChanged: (v) {
                        print("entered onchanged");
                        print("controller: ${curTempCtrl.text}");
                        print("Target: ${targetTemp.toInt().toString()}");  
                        if (curTempCtrl.text == targetTemp.toInt().toString())
                        {
                          print("entered if statement");
                          setState(() {
                            FlutterRingtonePlayer.playAlarm(looping: true);
                            
                          });
                        }
                      },
                       
                      ),
                      //),
                  ),
                  Text('Current Temp', style: TextStyle(fontSize: 16),),
                //],
              //)),
              Padding(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*.1, 20, MediaQuery.of(context).size.width*.1, 10),
                child:
               Slider(
                activeColor: Colors.lightBlueAccent,
                min: 32,
                max: 550,
                //label: 'Target Temp',
                onChanged: (sliderTemp) {
                  setState(() {
                    targetTemp = sliderTemp;
                    //setTemp();
                  });
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
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child:
              Text('Target Temp', style: TextStyle(fontSize: 16),),
              ),
        ],
      )),
    );
  }
}
