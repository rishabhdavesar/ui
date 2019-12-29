import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
class Clinic extends StatefulWidget {
  @override
  _ClinicState createState() => _ClinicState();
}

class _ClinicState extends State<Clinic> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 35,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Container(

            margin: EdgeInsets.only(right: 10, top: 10),
            child: Stack(
              children: <Widget>[
                Container(
                    child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 35,
                )),
                Container(
                  // width: 30,
                  //height: 30,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 5, left: 20),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffc32c37),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 20),
                    //   color: Colors.blue,
                    width: 300,
                    child: Text(
                      "Hello Medisinpedia!  Lets get overview of the clinic",
                      style: TextStyle(fontSize: 25),
                    )),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.healing,
                    color: Colors.green,
                    size: 50,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Photos'),
                Text('Team'),
                Text('Stats'),
                Text('Notification'),
                Text('Feedback'),
              ],
            ),
          ),
          Container(
            
            
       //     padding: EdgeInsets.all(5),
            decoration: new BoxDecoration(
              color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0xffe8e8e8),
        blurRadius: 7.0,  // has the effect of softening the shadow
        spreadRadius: 1.0, // has the effect of extending the shadow
       
      )
    ],
    borderRadius: new BorderRadius.all(Radius.circular(15)),
  ),
              margin: EdgeInsets.only(left: 6, right: 6, top: 50),
              //color: Colors.blueAccent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                     margin: EdgeInsets.only(left: 15, top: 20),
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                     
                      child: Image.asset('lib/images/yy.png'),
                    ),
                  ),

                  Container(
                   color: Colors.white,
                    
                    margin: EdgeInsets.only(left: 10,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Simon Marius",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 119,
                             // height: 20,
                            ),
                            Text(
                              "3 hours ago",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          width: 300,
                            child: Text(
                          "Treatments, services and quality.. Simply everything was perfect",
                          style: TextStyle(fontSize: 13),
                        )),
                        SizedBox(height: 30,),
                         Row(
                           children: <Widget>[
                             Container(
                              // color: Colors.green,
                               width: 150,
                               child: Text(
                                    "Availibilty",
                                    style: TextStyle(fontSize: 15),
                                  ),
                             ),
                               // SizedBox(width: 60,),
                                SmoothStarRating(
          rating: rating,
          size: 25,
          color: Colors.orange[600],
          borderColor:  Colors.orange[600],
          starCount: 5,
          spacing: 2.0,
          onRatingChanged: (value) {
            setState(() {
              rating = 1;
            });
          },
        )
                           ],
                         ),
                           SizedBox(height: 15,),
                         Row(
                           children: <Widget>[
                             Container(
                                width: 150,
                               child: Text(
                                    "Services",
                                    style: TextStyle(fontSize: 15),
                                  ),
                             ),
                               
                                SmoothStarRating(
          rating: rating,
          size: 25,
          color: Colors.orange[600],
          borderColor:  Colors.orange[600],
          starCount: 5,
          spacing: 2.0,
          onRatingChanged: (value) {
            setState(() {
              rating = 2;
            });
          },
        )
                           ],
                         ),
                           SizedBox(height: 15,),
                         Row(
                           children: <Widget>[
                             Container(
                                width: 150,
                               child: Text(
                                    "Staff",
                                    style: TextStyle(fontSize: 15),
                                  ),
                             ),
                          
                                SmoothStarRating(
          rating: rating,
          size: 25,
          color: Colors.orange[600],
          borderColor:  Colors.orange[600],
          starCount: 5,
          spacing: 2.0,
          onRatingChanged: (value) {
            setState(() {
              rating = value;
            });
          },
        )
                           ],
                         ),
                           SizedBox(height: 15,),
                         Row(
                           children: <Widget>[
                             Container(
                                width: 150,
                               child: Text(
                                    "Price",
                                    style: TextStyle(fontSize: 15),
                                  ),
                             ),
                              
                                SmoothStarRating(
          rating: rating,
          size: 25,
          color: Colors.orange[500],
          borderColor:  Colors.orange[600],
          starCount: 5,
          spacing: 2.0,
          onRatingChanged: (value) {
            setState(() {
              rating = value;
            });
          },
        ),
                           ],
                         ),
                         
                         Container(
                           margin: EdgeInsets.only(left: 180,top:10 ),
                           child: RaisedButton(
                             
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blue)),
        onPressed: () {},
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Replay",
            style: TextStyle(fontSize: 14)),
      ),
                         ),



                            
                      ],
                    ),
                  ),
                ],
              ),),

              new Container(
                width: double.infinity,
                height: 187,
                margin: EdgeInsets.only(top: 20),
                decoration: new BoxDecoration(
            color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0xffe8e8e8),
        blurRadius: 7.0, // has the effect of softening the shadow
        spreadRadius: 1.0, // has the effect of extending the shadow
       
      )
    ],
    borderRadius: new BorderRadius.all(Radius.circular(30)),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 40,top: 10),
        child: Text("Write a reply")),
        Container(
        
          height: 90,
           margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                decoration: new BoxDecoration(
           //   color: Colors.blue,
              border: Border.all(color: Colors.black),
  
    
    borderRadius: new BorderRadius.all(Radius.circular(10)),
    
    
  ),
  child:  TextFormField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Text',
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 10.0),
                                      border: InputBorder.none,
                                      // border: OutlineInputBorder(
                                      //     borderRadius:
                                      //         BorderRadius.circular(32.0)),
                                    ),
                                  ),
  
        ),
        Container(
          
        
          height: 40,
          width: 100,
           margin: EdgeInsets.only(top: 10,left: 150,right: 20),
                decoration: new BoxDecoration(
            //  color: Colors.blue,
              border: Border.all(color: Colors.black),
  
    
    borderRadius: new BorderRadius.all(Radius.circular(5)),
    
  ),
  child: Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(left: 20),
    child: Text("Send")),
  
        ),
        
    ],
  )
              )
        ],
      ),
    );
  }
}
