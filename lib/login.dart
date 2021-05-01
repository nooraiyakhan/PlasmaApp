import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plasmabank/homepage.dart';
import 'package:plasmabank/mobile.dart';
class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation,muchDelayedAnimation;
AnimationController animationController;
@override
void initState(){
  super.initState();
  animationController= AnimationController(
    duration : Duration(seconds: 2),vsync:this
  );
  animation = Tween(begin: -1.0, end : 0.0).animate(CurvedAnimation(
    parent: animationController,
    curve: Curves.fastOutSlowIn
  ));
  delayedAnimation = Tween(begin: -1.0, end : 0.0).animate(CurvedAnimation(
    
    parent: animationController,
    curve: Interval(0.5, 1.0,curve: Curves.fastOutSlowIn)
  ));
  muchDelayedAnimation = Tween(begin: -1.0, end : 0.0).animate(CurvedAnimation(
    
    parent: animationController,
    curve: Interval(0.8, 1.0,curve: Curves.fastOutSlowIn)
  ));
  animationController.forward();
}

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(animation: animationController
    , builder: (BuildContext context, Widget child){
      return Scaffold(
        backgroundColor: Colors.brown[50],
        body: Align(
          alignment: Alignment.center,
          child: Container(
            child: new Center(
              child: new ListView(
                shrinkWrap : true,
                children: [
                  
                  Transform(transform: Matrix4.translationValues(animation.value*width, 0.0, 0.0),
                  child: new Center(
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  ),
                  ),
                   Transform(transform: Matrix4.translationValues(muchDelayedAnimation.value*width, 0.0, 0.0),
                  child: new Center(
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(hintText: "Phone number",hintStyle: TextStyle(color: Colors.grey) ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ),
                   Transform(transform: Matrix4.translationValues(delayedAnimation.value*width, 0.0, 0.0),
                  child: new Center(
                    child: 
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       InkWell(
                         onTap: (){
                           setState(() {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                           });
                         },
                         child: Container(
                             margin: EdgeInsets.only(left: 100,right: 100,top:20,bottom: 20),
                    padding: EdgeInsets.only(top: 10,right: 40,left: 40,bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black87
                    ),
                           
                           child: 
                           Text("Signin",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),)),
                       ),
                         Container(
                           child: Text(
                             "Don't have an account?",style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w400,fontSize: 15),
                           ),
                         ),
                          Container(
                           margin: EdgeInsets.only(left: 100,right: 100,top:20,bottom: 20),
                    padding: EdgeInsets.only(top: 10,right: 40,left: 40,bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black54
                    ),
                         
                         child: 
                         InkWell(
                           onTap: (){
                             setState(() {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>Mobile()));
                             });
                           },
                           child: Container(child: Text("Signup",
                           style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),)))),
                       
                      ],
                    ),
                    
                  ),
                  ),
                ],
              ),
            ),
          ),
        )
        
      );
    
    });
    
  }
}