import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:day_night_switch/day_night_switch.dart';
class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: value?Colors.black:Colors.white,
          onPressed: ()
          {setState(() {
            
              value =!value;
          });
           
          },
        ),
        
        body: AnimatedContainer(
            duration: Duration(milliseconds:600 ),
            // Provide an optional curve to make the animation feel smoother.
          color: 
        value?Colors.grey[200]:Colors.grey[850],
            curve: Curves.linearToEaseOut,
                  child: Center(
            child: AnimatedContainer(
               duration: Duration(seconds: 1),
              //height: height/2,
              width: width/2,
             // padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                //  border: Border.all(width: 2.0, color: Colors.black),
                  color: value?Colors.grey[300]:Colors.grey[850],
                  //sborderRadius: BorderRadius.all(Radius.circular(50)),
                  shape: BoxShape.circle,
                  
                
                  ),
              child: AnalogClock(
                hourHandColor: value?Colors.black:Colors.white,
                minuteHandColor: value?Colors.black:Colors.white,
                
                decoration: BoxDecoration(
                    boxShadow: [
                    BoxShadow(
                       color: value?Colors.grey[500]:Colors.grey[900],
                       offset: Offset(5, 5),
                       blurRadius: 15,
                       spreadRadius: 1,


                    ),
                    BoxShadow(
                      color: value?Colors.white:Colors.grey[800],
                      offset: Offset(-5,-5),
                      blurRadius: 12,
                      spreadRadius: 1
                    )
                   

                  ],
                    //border: Border.all(width: 2.0, color: Colors.black),
                    color: value?Colors.white:Colors.grey[850],
                    
                    shape: BoxShape.circle),
                width: 150.0,
                isLive: true,
                showNumbers: false,
          showDigitalClock: false,
                datetime: DateTime(2019, 1, 1, 9, 12, 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}