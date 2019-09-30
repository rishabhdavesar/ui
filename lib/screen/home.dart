import 'package:flutter/material.dart';

class ListView extends StatefulWidget {
  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
   ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        
        // padding: EdgeInsets.only(top: 150),

        //   physics: const AlwaysScrollableScrollPhysics(),
        //   controller: _controller,
        //   children: getList(),
        //   scrollDirection: Axis.horizontal,
     ),
    );
  }
}