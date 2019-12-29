import 'package:flutter/material.dart';

import 'details.dart';

class LongCard extends StatefulWidget {
  LongCard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LongCardState createState() => _LongCardState();
}

class _LongCardState extends State<LongCard> {
  Container LongCards() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          )),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Details()),
          );
        },
        child: Row(
          children: <Widget>[
            Container(
                height: 60,
                margin: EdgeInsets.only(left: 10),
                child: Image.asset('lib/images/jordon1.png')),
            Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Air Jordon 1",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1),
                )),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  " ₹400k ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 400,
    //    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
    // //  color: Colors.blue,

    //    child: ListView(
    //    // padding: EdgeInsets.only(top: 450, left: 20, right: 20),
    //    // physics: const ScrollActivity(NULL),
    //     children: getList(),
    //   ),
    // );
    return LongCards();
  }

  // List<Widget> getList() {
  //   return [
  //    LongCards(),
  //    LongCards(),
  //    LongCards(),
  //    LongCards(),
  //    LongCards(),
  //    LongCards(),
  //   ];
  // }
}
