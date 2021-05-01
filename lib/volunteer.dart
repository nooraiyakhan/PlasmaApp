import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Volunteer extends StatefulWidget {
  @override
  _VolunteerState createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
   void customLaunch(command)async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print("Could not launch $command");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           
      appBar:new PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(
            top: MediaQuery.of(context).padding.top
          ),
          child: new Padding(padding: const EdgeInsets.only(
            left: 10,top: 20,bottom: 20
          ),
          child: 
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,color: Colors.white,)),
              SizedBox(width: 30,),
              new Text(
                'Volunteer',
                style: new TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                
                  color: Colors.white
                ),
                //textAlign: TextAlign.center,
              ),
            ],
          ),
          
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black45,
                Colors.black54
              ]
            ),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey[500],
                blurRadius: 20.0,
                spreadRadius: 1.0,
              )
            ]
          ),
        ),
         preferredSize: new Size(
        MediaQuery.of(context).size.width , 150)

      ),
       backgroundColor: Colors.brown[50],
      body: 
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Card(
                margin: EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
                color:  Colors.white,
                elevation: 3,
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Sristy Das",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width:70,
                            margin: EdgeInsets.only(left: 5,top: 5),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1)
                            ),
                            child: Text("A+",style: TextStyle(fontSize: 30,color: Colors.black54),textAlign: TextAlign.center,),
                            padding: EdgeInsets.only(top: 42),
                          ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             
                             SizedBox(height: 10,),
                             Row(
                              
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.location_on_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("Sylhet",style: TextStyle(color: Colors.black54,fontSize: 18,),)
                               ],
                             ),
                             SizedBox(height: 10,),
                            Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.send_sharp,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("15/04/2021",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.assignment_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("2 bag",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.phone_forwarded_rounded,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("01727890943",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                           ],
                         )
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      InkWell(
                        onTap: (){
                          customLaunch('tel:01727890943');
                        },
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0), ),
                         child: Container(
                           height: 35,
                           width: 100,
                           color: Colors.green,
                           child: 
                           Row(
                             
                             children: [
                               Padding(padding: EdgeInsets.only(left: 20)),
                               Icon(
                                 Icons.phone,color: Colors.white,size: 20,
                               ),
                               SizedBox(width: 3,),
                               Text(
                                 "Call",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18
                                 ),
                               ),
                             ],
                           ),
                         ),

                        ),
                      )
                    ],
                  ),
                  
                ),
            ),
                Card(
                margin: EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
                color:  Colors.white,
                elevation: 3,
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Mishty Dey",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width:70,
                            margin: EdgeInsets.only(left: 5,top: 5),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1)
                            ),
                            child: Text("B+",style: TextStyle(fontSize: 30,color: Colors.black54),textAlign: TextAlign.center,),
                            padding: EdgeInsets.only(top: 42),
                          ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             
                             SizedBox(height: 10,),
                             Row(
                              
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.location_on_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("Dhaka",style: TextStyle(color: Colors.black54,fontSize: 18,),)
                               ],
                             ),
                             SizedBox(height: 10,),
                            Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.send_sharp,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("18/04/2021",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.assignment_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("1 bag",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.phone_forwarded_rounded,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("01788903452",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                           ],
                         )
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      InkWell(
                        onTap: (){
                          customLaunch('tel:01788903452');
                        },
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0), ),
                         child: Container(
                           height: 35,
                           width: 100,
                           color: Colors.green,
                           child: 
                           Row(
                             
                             children: [
                               Padding(padding: EdgeInsets.only(left: 20)),
                               Icon(
                                 Icons.phone,color: Colors.white,size: 20,
                               ),
                               SizedBox(width: 3,),
                               Text(
                                 "Call",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18
                                 ),
                               ),
                             ],
                           ),
                         ),

                        ),
                      )
                    ],
                  ),
                  
                ),
            ),
                Card(
                margin: EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
                color:  Colors.white,
                elevation: 3,
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Suma khan",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width:70,
                            margin: EdgeInsets.only(left: 5,top: 5),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1)
                            ),
                            child: Text("O+",style: TextStyle(fontSize: 30,color: Colors.black54),textAlign: TextAlign.center,),
                            padding: EdgeInsets.only(top: 42),
                          ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             
                             SizedBox(height: 10,),
                             Row(
                              
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.location_on_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("Barisal",style: TextStyle(color: Colors.black54,fontSize: 18,),)
                               ],
                             ),
                             SizedBox(height: 10,),
                            Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.send_sharp,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("3/04/2021",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.assignment_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("3 bag",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.phone_forwarded_rounded,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("01788903389",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                           ],
                         )
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      InkWell(
                        onTap: (){
                          customLaunch('tel:01788903389');
                        },
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0), ),
                         child: Container(
                           height: 35,
                           width: 100,
                           color: Colors.green,
                           child: 
                           Row(
                             
                             children: [
                               Padding(padding: EdgeInsets.only(left: 20)),
                               Icon(
                                 Icons.phone,color: Colors.white,size: 20,
                               ),
                               SizedBox(width: 3,),
                               Text(
                                 "Call",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18
                                 ),
                               ),
                             ],
                           ),
                         ),

                        ),
                      )
                    ],
                  ),
                  
                ),
            ),
                Card(
                margin: EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
                color:  Colors.white,
                elevation: 3,
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Juma Das",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width:70,
                            margin: EdgeInsets.only(left: 5,top: 5),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1)
                            ),
                            child: Text("B+",style: TextStyle(fontSize: 30,color: Colors.black54),textAlign: TextAlign.center,),
                            padding: EdgeInsets.only(top: 42),
                          ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             
                             SizedBox(height: 10,),
                             Row(
                              
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.location_on_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("Chitagong",style: TextStyle(color: Colors.black54,fontSize: 18,),)
                               ],
                             ),
                             SizedBox(height: 10,),
                            Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.send_sharp,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("11/04/2021",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.assignment_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("3 bag",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.phone_forwarded_rounded,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("01788903452",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                           ],
                         )
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      InkWell(
                        onTap: (){
                          customLaunch('tel:01788903452');
                        },
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0), ),
                         child: Container(
                           height: 35,
                           width: 100,
                           color: Colors.green,
                           child: 
                           Row(
                             
                             children: [
                               Padding(padding: EdgeInsets.only(left: 20)),
                               Icon(
                                 Icons.phone,color: Colors.white,size: 20,
                               ),
                               SizedBox(width: 3,),
                               Text(
                                 "Call",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18
                                 ),
                               ),
                             ],
                           ),
                         ),

                        ),
                      )
                    ],
                  ),
                  
                ),
            ),
                Card(
                margin: EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
                color:  Colors.white,
                elevation: 3,
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Jumur Roy",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width:70,
                            margin: EdgeInsets.only(left: 5,top: 5),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1)
                            ),
                            child: Text("A+",style: TextStyle(fontSize: 30,color: Colors.black54),textAlign: TextAlign.center,),
                            padding: EdgeInsets.only(top: 42),
                          ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             
                             SizedBox(height: 10,),
                             Row(
                              
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.location_on_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("Dhaka",style: TextStyle(color: Colors.black54,fontSize: 18,),)
                               ],
                             ),
                             SizedBox(height: 10,),
                            Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.send_sharp,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("15/04/2021",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.assignment_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("5 bag",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.phone_forwarded_rounded,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("01788903666",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                           ],
                         )
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      InkWell(
                        onTap: (){
                          customLaunch('tel:01788903666');
                        },
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0), ),
                         child: Container(
                           height: 35,
                           width: 100,
                           color: Colors.green,
                           child: 
                           Row(
                             
                             children: [
                               Padding(padding: EdgeInsets.only(left: 20)),
                               Icon(
                                 Icons.phone,color: Colors.white,size: 20,
                               ),
                               SizedBox(width: 3,),
                               Text(
                                 "Call",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18
                                 ),
                               ),
                             ],
                           ),
                         ),

                        ),
                      )
                    ],
                  ),
                  
                ),
            ),
                Card(
                margin: EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
                color:  Colors.white,
                elevation: 3,
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Sristy Das",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width:70,
                            margin: EdgeInsets.only(left: 5,top: 5),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.1)
                            ),
                            child: Text("A+",style: TextStyle(fontSize: 30,color: Colors.black54),textAlign: TextAlign.center,),
                            padding: EdgeInsets.only(top: 42),
                          ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             
                             SizedBox(height: 10,),
                             Row(
                              
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.location_on_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("Sylhet",style: TextStyle(color: Colors.black54,fontSize: 18,),)
                               ],
                             ),
                             SizedBox(height: 10,),
                            Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.send_sharp,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("15/04/2021",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.assignment_outlined,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("2 bag",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Padding(padding: EdgeInsets.only(left: 10)),
                                 Icon(Icons.phone_forwarded_rounded,color: Colors.black54,size: 20,),
                                 SizedBox(width: 10,),
                                 Text("01788906788",style: TextStyle(color: Colors.black54,fontSize: 18),)
                               ],
                             ),
                           ],
                         )
                          
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      InkWell(
                        onTap: (){
                          customLaunch('tel:01788906788');
                        },
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.grey,
                           shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0), ),
                         child: Container(
                           height: 35,
                           width: 100,
                           color: Colors.green,
                           child: 
                           Row(
                             
                             children: [
                               Padding(padding: EdgeInsets.only(left: 20)),
                               Icon(
                                 Icons.phone,color: Colors.white,size: 20,
                               ),
                               SizedBox(width: 3,),
                               Text(
                                 "Call",style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 18
                                 ),
                               ),
                             ],
                           ),
                         ),

                        ),
                      )
                    ],
                  ),
                  
                ),
            ),
    ])]))
    );
  }
}