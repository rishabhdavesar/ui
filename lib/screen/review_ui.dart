import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: AppBar(),
       drawer: Drawer(), 
body: ListView(
  children: <Widget>[
    Table(
      children: [
        TableRow(children: 
        [
          TableCell(child: Row(
            children: <Widget>[
              Container(color: Colors.blue,width: 20,),
              Container(color: Colors.blue,width: 20,),
              Container(color: Colors.blue,width: 20,)
            ],
          ))
        ]),
           TableRow(children: 
        [
          TableCell(child: Row(
            children: <Widget>[
              Container(color: Colors.blue,width: 20,),
              Container(color: Colors.blue,width: 20,),
              Container(color: Colors.blue,width: 20,)
            ],
          ))
        ]),
      ],
    )
  ],
),

      ),
      
    );
  }
}