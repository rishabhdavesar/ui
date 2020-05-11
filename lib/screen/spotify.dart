import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

class Spotify extends StatefulWidget {
  @override
  _SpotifyState createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  final ScrollController scrollController = ScrollController();
  bool x = false;
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            if (x == true) {
              setState(() {
                x = false;
                print(x);
              });
            } else {
              setState(() {
                x = true;
                print(x);
              });
            }
          },
          child: Container(
            color: Color(0xff121212),
            child: CustomScrollView(
              
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: <Widget>[
                SliverAppBar(
                  
                  leading: Icon(Icons.arrow_back_ios),
                  centerTitle: true,
                  title: AnimatedOpacity(
                      duration: Duration(milliseconds: 100),
                      opacity: 1,
                      child: Text(
                        "Release Radar",
                        style: TextStyle(color: Colors.white),
                      )),

                  stretch: true,
                  //backgroundColor: Color(0xff383838),
                  bottom: PreferredSize(
                    // Add this code
                    preferredSize: Size.fromHeight(5.0), // Add this code
                    child: Text(''), // Add this code
                  ),

                  expandedHeight: 350,
                  floating: false,
                  pinned: true,
                  // snap: false,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient:LinearGradient(
                        begin: Alignment.topRight,
                       
                        stops: [0.1,3.5],
                        colors: [Color(0xff292929),Color(0xff121212), ]
                      )
                    ),
                    child: FlexibleSpaceBar(
                      
                        centerTitle: true,
                        background: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 100, bottom: 20),
                              height: 150,
                              width: 150,
                            //  color: Colors.green,
                              child: Image.asset("lib/images/spotify.jpg"),
                              // we'll add image here...
                            ),
                            Container(
                              child: Text(
                                "Release Radar",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 28,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 110,
                              height: 28,
                              child: RaisedButton(
                                //  padding: EdgeInsets.all(3),
                                onPressed: () {},
                                color: Color(0xff1f1f1f),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color(0xff1DB954),
                                    )),
                                child: Text(
                                  "FOLLOWING",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                             Text('8 Followers • By Spotify  ',style: TextStyle(color: Colors.white54),),
                          ],
                        )),
                  ),
                  elevation: 0,
                ),
                SliverStickyHeader(
                  //overlapsContent: true,
                  sticky: true,
                  header: Stack(children: <Widget>[
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                          color: Color(0xff121212),
                          border:
                              Border.all(color: Color(0xff121212), width: 10)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 40,
                      //     color: Color(0xff191414),
                      decoration: BoxDecoration(
                          color: Color(121212),

                          //   borderRadius: BorderRadius.circular(18.0),
                          border: Border.all(
                            color: Color(0xff121212),
                          )),
                    ),
                    Container(
                      height: 60,
                      width: 250,
                      margin: EdgeInsets.only(left: 80),
                      alignment: Alignment.center,
                      decoration: new BoxDecoration(
                          color: Color(0xff1DB954),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        'SHUFFLE PLAY',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                    ),
                  ]),

                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                          decoration: new BoxDecoration(
                              color: Color(121212),
                              border:
                                  Border.all(color: Color(121212), width: 5)),
                          height: 50,
                          // padding: EdgeInsets.only(top: 5),
                          margin: EdgeInsets.all(10),
                          //alignment: Alignment.Left,

                          child: ListTile(
                            title:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Cool Girl ',style: TextStyle(color: Colors.white),),
                                                              Icon(Icons.more_vert,color: Colors.white70,)

                              ],
                            ),
                            subtitle:  Text('Tove Lo • The Big Moon ',style: TextStyle(color: Colors.white54),),
                          )
                        );
                      },
                      childCount: 29,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //         onNotification: (notificationInfo) {
      //   if (notificationInfo is ScrollStartNotification) {
      //     print("scroll");
      //     print("detail:"+notificationInfo.dragDetails.toString());
      //         setState(() {
      //              print("-----1-----");
      //              x= true;
      //            });
      //   }
      //   if (notificationInfo is ScrollUpdateNotification) {
      //     print("scroll");
      //     print("detail:"+notificationInfo.dragDetails.toString());
      //         setState(() {
      //              print("-----2----");
      //              x= false;
      //            });
      //   }
      //   return true;
      // },
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