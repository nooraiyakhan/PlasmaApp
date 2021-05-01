import 'package:flutter/material.dart';
import 'package:plasmabank/mydonor.dart';
import 'package:plasmabank/newsfeed.dart';
import 'package:plasmabank/request.dart';
import 'package:plasmabank/volunteer.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> with
SingleTickerProviderStateMixin
{
  Animation animation, delayedAnimation;
  AnimationController animationController;
  @override
  void initState(){
    super.initState();
    animationController=AnimationController(duration : Duration(seconds: 3), vsync:this);
     animation = Tween(begin: -1.0, end : 0.0).animate(CurvedAnimation(
    parent: animationController,
    curve: Curves.fastOutSlowIn
  ));
  delayedAnimation = Tween(begin: -1.0, end : 0.0).animate(CurvedAnimation(
    
    parent: animationController,
    curve: Interval(0.5, 1.0,curve: Curves.fastOutSlowIn)
  ));
animationController.forward();
  }
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    return AnimatedBuilder(animation: animationController,
     builder: (BuildContext context,Widget child)
     
    {
     return Scaffold(
      backgroundColor: Colors.white,
      body: 
      SafeArea(
              child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: new 
                ListView(
                  shrinkWrap: true,
                  children: [
                    Transform(
                      transform: Matrix4.translationValues(animation.value *width, 0.0, 0.0),
                                    child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.black54,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(100))),
     
     child:
     Container(
            padding: EdgeInsets.only(top: 50),
            child: 
            Column(
                      children: [
                        Text(
                         "Whoever saves the life of one person,it is as if he has saved the life of all mankind   ",
                         style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                         fontSize: 18
                         ),
                         textAlign: TextAlign.center,
     ),
     SizedBox(height: 10,),
     Text("QUR'AN 5:32",  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                         fontSize: 20
                         ),
                         textAlign: TextAlign.center,)
                      ],
            ), ),), ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 10,),
            Transform(
              transform: Matrix4.translationValues(delayedAnimation.value*width, 0.0, 0.0),
                          child:
                           Column(
                children: [
                    InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>Newsfeed())
                    );
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                 decoration: 
                 BoxDecoration(
                  gradient: LinearGradient(
                     colors: [
                       Colors.black45,
                       Colors.black54
                     ]),
                //   border: Border.all(width: 2,color: Colors.black54),
                  borderRadius: BorderRadius.circular(5)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                     Container(
                      padding: EdgeInsets.only(left: 20),
                       child: 
                       Row(
                         children: [
                           Icon(Icons.timeline_sharp,size: 30,color: Colors.white,),
                           SizedBox(width: 10,),
                          // Image.asset("assets/news.jpg",height: 48,width: 48,),
                           Text("Newsfeed",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),)
                         ],
                       )
                     ),
                     Container(
                       padding: EdgeInsets.only(right: 20),
                       child: Text("300",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w300),))
                   ],
                 ),

                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Volunteer()));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                 decoration: 
                 BoxDecoration(
                     gradient: LinearGradient(
                     colors: [
                       Colors.black45,
                       Colors.black54
                     ]),
                   
                 //  border: Border.all(width: 2,color: Colors.black54),
                  borderRadius: BorderRadius.circular(5)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                     Container(
                      padding: EdgeInsets.only(left: 20),
                       child: 
                       Row(
                         children: [
                           Icon(Icons.volunteer_activism,size: 30,color: Colors.white,),
                           SizedBox(width: 10,),
                          //  Image.asset("assets/rqst.jpg",height: 48,width: 48,),
                           Text("Volunteer",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),)
                         ],
                       )
                     ),
                     Container(
                       padding: EdgeInsets.only(right: 20),
                       child: Text("600",style: TextStyle(color: Colors.white,fontSize:20 ),))
                   ],
                 ),

                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mydonor()));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                 decoration: 
                 BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Colors.black45,
                       Colors.black54
                     ]),
         
                 //  border: Border.all(width: 2,color: Colors.black54),
                  borderRadius: BorderRadius.circular(5)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                     Container(
                      padding: EdgeInsets.only(left: 20),
                       child:     Row(
                         children: [
                           Icon(Icons.coronavirus,size: 30,color: Colors.white,),
                           SizedBox(width: 10,),
                           Text("MyDonors",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),)
                         ],
                       )
                     ),
                     Container(
                       padding: EdgeInsets.only(right: 20),
                       child: Text("200",style: TextStyle(color: Colors.white,fontSize:20 ),))
                   ],
                 ),

                ),
              ),
              SizedBox(height: 10,),
           InkWell(
               onTap: (){
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Request()));
                 });
               },
               child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                 decoration: 
                 BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Colors.black45,
                       Colors.black54
                     ]),
         
                 //  border: Border.all(width: 2,color: Colors.black54),
                  borderRadius: BorderRadius.circular(5)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                     Container(
                      padding: EdgeInsets.only(left: 20),
                       child: 
                       Row(
                         children: [
                           Icon(Icons.list,size: 30,color: Colors.white,),
                           SizedBox(width: 10,),
                           Text("Request",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),)
                         ],
                       )
                     ),
                     Container(
                       padding: EdgeInsets.only(right: 20),
                       child: Text("400",style: TextStyle(color: Colors.white,fontSize:20 ),))
                   ],
                 ),

                ),
           ),
                ],
              ),
            )
            
           
            ]),
        ),
      ));
   
    
  });
}}