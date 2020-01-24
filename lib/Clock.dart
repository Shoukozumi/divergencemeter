import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class NixieClock extends StatefulWidget {
  @override
  _NixieClockState createState() => _NixieClockState();


}

class _NixieClockState extends State<NixieClock> {
  int hourA = 0;
  int hourB = 1;
  int minA = 2;
  int minB = 3;
  int secA = 4;
  int secB = 5;
  int micA = 6;
  int micB = 7;
  int micC = 8;



  @override
  void initState() {
    super.initState();

    Timer.periodic(new Duration(milliseconds: 1), (Timer t) => updateTime()); //YOU MUST PASS THE Timer t VARIABLE TO THE FUNCTION!!!

  }
  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

/*  initTimer(){
    new Timer.periodic(new Duration(milliseconds: 1))
  }*/

  updateTime(){
    setState(() {
      var currentTime = DateTime.now();
      hourA = ((currentTime.hour - (currentTime.hour % 10)) ~/ 10);
      hourB = (currentTime.hour % 10);
      minA = ((currentTime.minute - (currentTime.minute % 10)) ~/ 10);
      minB = (currentTime.minute % 10);
      secA = ((currentTime.second - (currentTime.second % 10)) ~/ 10);
      secB = (currentTime.second % 10);
      //micC = (currentTime.microsecond % 100) % 10;
      //micB = ((currentTime.microsecond % 100) - micC) ~/ 10;
      micA = (currentTime.microsecond ~/ 100);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$hourA.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$hourB.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/dot.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$minA.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$minB.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/dot.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$secA.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$secB.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/dot.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$micA.png"),
                    ),
                  ),
                ),
                /*Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$micB.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image(
                      image: AssetImage("images/$micC.png"),
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
