import 'package:flutter/material.dart';





class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
     ScrollController _controller = new ScrollController();

    return Container(
     child: ListView(
        padding: EdgeInsets.only(top: 150),

          physics: const AlwaysScrollableScrollPhysics(),
          controller: _controller,
          children: getList(),
          scrollDirection: Axis.horizontal,
     ),
   )

   ;
  }
   List<Widget> getList()
  {
    return[
    Stack(
    children: <Widget>[

      Container(
      
        height: 200,
        width: 150,
         decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(130),
                          //Radius.circular(20),
                        )),
        margin: EdgeInsets.only(left: 30,right: 10),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment(.5, -1.3),
              child: RotationTransition(turns: new AlwaysStoppedAnimation(-30/360),child: Image.asset('lib/images/jordon2.png', fit: BoxFit.cover,)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,right: 20),
              child: Text("Air Jordon 1",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,color: Colors.white,
                        letterSpacing: -1)),
            ),
               Container(
              margin: EdgeInsets.only(top: 8,right: 20),
              child: Text("₹500",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,color: Colors.white,
                        letterSpacing: -1)),
            )
          ],
        ),
      )
    ],
  ),
    Stack(
    children: <Widget>[

      Container(
      
        height: 200,
        width: 150,
         decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(130),
                          //Radius.circular(20),
                        )),
        margin: EdgeInsets.only(left: 30,right: 10),
        child: Align(
          alignment: Alignment(.5, -1.3),
          child: RotationTransition(turns: new AlwaysStoppedAnimation(-30/360),child: Image.asset('lib/images/jordon2.png', fit: BoxFit.cover,)),
        ),
      )
    ],
  ),
    Stack(
    children: <Widget>[

      Container(
      
        height: 200,
        width: 150,
         decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(130),
                          //Radius.circular(20),
                        )),
        margin: EdgeInsets.only(left: 30,right: 10),
        child: Align(
          alignment: Alignment(.5, -1.3),
          child: RotationTransition(turns: new AlwaysStoppedAnimation(-30/360),child: Image.asset('lib/images/jordon2.png', fit: BoxFit.cover,)),
        ),
      )
    ],
  ),
      ];
      }
}
