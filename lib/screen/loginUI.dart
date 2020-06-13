import 'package:flutter/material.dart';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
    TextEditingController email = TextEditingController();
      TextEditingController a = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          Container(
            //     margin: EdgeInsets.only(top:h/15),
            height: h/1.2,
            width: w,
            child: RotatedBox(
              quarterTurns: 0,
              child: FlareActor(
                'lib/images/curve.flr',
                animation: 'Flow',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fill,
                // isPaused: x,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: w / 4, left: w / 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Back ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                        ),
                ),
               
              ],
            ),
          ),
           Container(
              margin: EdgeInsets.only(top:h/2),
          
             alignment: Alignment.center,
             child: ListView(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                
                 box(email, "Email",TextInputType.text),
                   box(a, "Password",TextInputType.visiblePassword),
                   
   Container(
      margin: EdgeInsets.only(top:h/25),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: <Widget>[
         Text("Sign in",style: TextStyle(color: Color(0xff854bb0),fontSize: 24,fontWeight: FontWeight.w500),),
              
                Container(
                  //  margin: EdgeInsets.only(top:h/20),
             
                  height: h / 12,
                  width: h / 12,
                  
                  child: RaisedButton(
                    color: Color(0xff854bb0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    elevation: 3,
                    child: Icon(Icons.arrow_forward,color: Colors.white,size: 35,),
                    onPressed: () {
                      Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainScreen();
                                    },
                                  ),
                                );
                    },
                  ),
                ),
       ],
     ),
   ),
   
   Container(
     margin: EdgeInsets.only(top:h/20),
     child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: <Widget>[
         InkWell(
           onTap: ()
           {
                   Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SignUp();
                                    },
                                  ),
                                );
           },
           child: Text("Sign up",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,decoration: TextDecoration.underline,))),
            Text("Forgot password",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,decoration: TextDecoration.underline,)),
         
       ],
     ),
   )
               ],
             )),
            
         
        ],
      ),
    );
  }
}

Widget box(TextEditingController x, String label, TextInputType t) {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(5),
 
    child: Form(
      //   key: formkey,
      child: TextFormField(
        
        controller: x,
        cursorColor: Colors.black,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
        keyboardType: t,
        maxLines: null,
      
        decoration: InputDecoration(
          hintText: label,
         
          labelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          hintStyle:
              TextStyle(color: Colors.grey[450], fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffac5fe3) ,
      body: Center(child: Text("Main Screen"),),
      
    );
  }
}


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    TextEditingController name = TextEditingController();
      TextEditingController email = TextEditingController();
        TextEditingController password = TextEditingController();
          TextEditingController phoneumber = TextEditingController();
         TextEditingController dob = TextEditingController();  
DateTime dates;
 
  @override
  Widget build(BuildContext context) {
        double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
     final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: h/1.4,
child: FlareActor(
                'lib/images/curve.flr',
                animation: 'Flow',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.cover,
                // isPaused: x,
              ),
        ),

           Container(
            margin: EdgeInsets.only(top: w / 4, left: w / 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Create ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Account ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                        ),
                ),
               
       
              ],
            ),
          ),
Container(
  margin: EdgeInsets.only(top: h/3),
  //height: h/2,
  child: ListView(
  //    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
         box(name, "Name",TextInputType.text),
           box(email, "Email",TextInputType.emailAddress),
            box(password, "Password",TextInputType.visiblePassword),
             box(phoneumber, "Phone Number",TextInputType.phone),
  

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
                // Container(
                //   width: w/1.2,
                //   child: box(dob, "DOB",TextInputType.datetime)),
            Text(dates!=null?"${dates.day}-${dates.month}-${dates.year}":"DOB",style:    TextStyle(color: Color(0xffac5fe3), fontWeight: FontWeight.w600,fontSize: 18),),
              IconButton(icon: Icon(Icons.date_range,color: Color(0xffac5fe3),), onPressed: ()
              {

  DatePicker.showDatePicker(context,
                                showTitleActions: true,

                                minTime: DateTime(1950, 3, 5),
                                maxTime: DateTime(2020, 6, 7), onChanged: (date) {
                              print('change $date');
                             print( "${date.day}-${date.month}-${date.year}");
                            }, onConfirm: (date) {
                              print('confirm $date');
                             setState(() {
                                 dates = date;
                             });
                            
                                print( "${dates.day}-${dates.month}-${dates.year}");
              //                 key.currentState.showSnackBar(new SnackBar(
              //                   duration: Duration(seconds: 3),
              //   content: new Text("Your date is : ${dates.day}-${dates.month}-${dates.year}"),
              // ));
                            },
                             
                             currentTime: DateTime.now(), locale: LocaleType.en);
              })
            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: w/15,top: 10),
           
                      height: h / 15,
                  
                      
                      child: RaisedButton(
                        color: Color(0xff854bb0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)
                        ),
                        elevation: 3,
                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 35,),
                        onPressed: () {
                          Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return MainScreen();
                                        },
                                      ),
                                    );
                        },
                      ),
                    ),
                ],
              ),
        
             
    ],
    
  ),
),




      ],),
      
    );
  }
}

