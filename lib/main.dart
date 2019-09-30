import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
     ScrollController _controller = new ScrollController();

    return Scaffold(
      
   appBar: AppBar(backgroundColor: Color(0xfff5f5f5),
   elevation: 0,
   leading: Icon(Icons.blur_circular,color: Colors.black,size: 30,),
   ),
   backgroundColor: Color(0xfff5f5f5),
   body: Container(
     child: ListView(
        padding: EdgeInsets.only(top: 150),

          physics: const AlwaysScrollableScrollPhysics(),
          controller: _controller,
          children: getList(),
          scrollDirection: Axis.horizontal,
     ),
   ),

    );
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
