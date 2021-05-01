import 'package:flutter/material.dart';
class Ver extends StatefulWidget {
  @override
  _VerState createState() => _VerState();
}

class _VerState extends State<Ver> {
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
                  hintText: "Enter Verification Code",hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 20,),
          Container(
                           margin: EdgeInsets.only(left: 100,right: 100,top:20,bottom: 20),
                    padding: EdgeInsets.only(top: 10,right: 40,left: 40,bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black87
                    ),
                         
                         child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),)),
        ],
      ),
    );
  }
}