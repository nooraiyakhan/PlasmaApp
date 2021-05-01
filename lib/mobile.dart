import 'package:flutter/material.dart';
import 'package:plasmabank/ver.dart';
class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Column(
      
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your phone number",hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 20,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Ver()));
              });
            },
            child: Container(
                             margin: EdgeInsets.only(left: 100,right: 100,top:20,bottom: 20),
                      padding: EdgeInsets.only(top: 10,right: 40,left: 40,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black87
                      ),
                           
                           child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),)),
          ),
        ],
      ),
    );
  }
}