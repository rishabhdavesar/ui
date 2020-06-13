import 'package:flutter/material.dart';
import 'package:ui/screen/categories_card.dart';
import 'package:ui/screen/clock.dart';
import 'package:ui/screen/loginUI.dart';
import 'package:ui/screen/long_cards.dart';
import 'package:ui/screen/review_ui.dart';
import 'package:ui/screen/spotify.dart';

import 'screen/cardekho.dart';
import 'screen/clinic.dart';


void main() => runApp(new MaterialApp(
       builder: (context, child) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: child,
    );
  },
  debugShowCheckedModeBanner: false,
    home: LoginUI(),
));




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       builder: (context, child) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: child,
    );
  },
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
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
     

    return Scaffold(
      
   appBar: AppBar(backgroundColor: Color(0xffebebeb),
   elevation: 0,
   leading: Icon(Icons.menu,color: Colors.black,size: 30,),
   ),
   backgroundColor: Color(0xffebebeb),
   body: CustomScrollView(
     controller: scrollController,
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Color(0xffebebeb),
           floating: false,
            expandedHeight: 400.0,
            pinned: false,
            flexibleSpace: new FlexibleSpaceBar(
              background: Container(
       child: Stack(
         children: <Widget>[
           Row(
             children: <Widget>[
               Container(
                 margin: EdgeInsets.only(left: 30,top: 60),
                 child: Text("Categories",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,fontFamily: '',letterSpacing: -2 ),)),
             Container(
              
               margin: EdgeInsets.only(left: 170,top: 60),
               child: Icon(Icons.search,size: 35,),
             ),
             ],
           ),
       //    Home(),
      
        // LongCard()
         ],
        
       ),
       
     ) ,
            ),
            
        ),
        SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildListDelegate(
                    [Row(
             children: <Widget>[
               Container(
                 margin: EdgeInsets.only(left: 30,top: 5),
                 child: Text("Just For You",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,fontFamily: '',letterSpacing: -1 ),)),
             Container(
              
               margin: EdgeInsets.only(left: 170,top: 5),
               child:Text("View All",style: TextStyle(color: Colors.blue,fontSize: 15,letterSpacing: -.5 ),)
             ),
             Divider(),

            
             ],
           ),
                      ],  ),

        ),
         new SliverList(

            delegate: new SliverChildBuilderDelegate(
              (context, index) => LongCard(),
            ),
          ),
      ],

       
   ),
   
   );
      }
}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}