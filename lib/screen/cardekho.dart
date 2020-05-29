import 'package:imageview360/imageview360.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  DemoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  List<AssetImage> imageList = List<AssetImage>();
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = Duration(milliseconds: 50);
  bool imagePrecached = false;

  @override
  void initState() {
    //* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffFC704A),
        child: Container(
          height: 60,
          child: Center(child: Text("Book Now",style: TextStyle(
                  fontSize: 26,
                color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),)),
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(
        // alignment: Alignment.center,
        children: <Widget>[
          (imagePrecached == true)
              ? ImageView360(
                  key: UniqueKey(),
                  imageList: imageList,
                  autoRotate: false,
                  rotationCount: 2,
                  rotationDirection: RotationDirection.anticlockwise,
                  frameChangeDuration: Duration(milliseconds: 170),
                  swipeSensitivity: swipeSensitivity,
                  allowSwipeToRotate: allowSwipeToRotate,
                )
              : Text("Pre-Caching images..."),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Ford Mustang",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5),
            ),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.only(top: 300),
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFC704A),
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(20),
                    //height: 50,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        index == 0
                            ? Icon(
                                Icons.av_timer,
                                size: 60,
                                color: Colors.grey[300],
                              )
                            : Icon(
                                Icons.camera,
                                size: 60,
                                color: Colors.grey[300],
                              ),
                        index == 0
                            ? Text(
                                "410 KM/h",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1.5,
                                    color: Colors.grey[300]),
                              )
                            : Text(
                                "13.6L",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1.5,
                                    color: Colors.grey[300]),
                              )
                      ],
                    ));
              },
            ),
          ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Container(
            margin: EdgeInsets.only(left: 20, top: 580),
            child: Text(
              "₹5000",
              style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5),
            ),
          ),
                 ],
               ),

               
          
        ],
      ),
    );
  }

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 36; i++) {
      imageList.add(AssetImage('lib/images/$i.jpg'));
      //* To precache images so that when required they are loaded faster.
      await precacheImage(AssetImage('lib/images/$i.jpg'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }
}
