import 'package:flutter/material.dart';
import 'package:plasmabank/newsfeed.dart';
class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
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
                'Make a request for blood',
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
      body: 
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
                 Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(top: 20,right: 10,bottom: 10,left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: 
            TextField(
              keyboardType: TextInputType.number,
            textAlign: TextAlign.start,
             decoration: InputDecoration(
               
               hintText: 'Full Name',
               
               hintStyle: TextStyle(color: Colors.grey),
               border: InputBorder.none,
              
             ),
            ),
          ),
        
                 Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(top: 20,right: 10,bottom: 10,left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: 
            TextField(
              keyboardType: TextInputType.text,
            textAlign: TextAlign.start,
             decoration: InputDecoration(
               
               hintText: 'Select District',
               
               hintStyle: TextStyle(color: Colors.grey),
               border: InputBorder.none,
              
             ),
            ),
          ),
       Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(top: 20,right: 10,bottom: 10,left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: 
            TextField(
              keyboardType: TextInputType.text,
            textAlign: TextAlign.start,
             decoration: InputDecoration(
               
               hintText: 'Required Blood Group',
               
               hintStyle: TextStyle(color: Colors.grey),
               border: InputBorder.none,
              
             ),
            ),
          ),
      
                 Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(top: 20,right:0,bottom: 10,left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: 
            TextField(
              keyboardType: TextInputType.text,
            textAlign: TextAlign.start,
             decoration: InputDecoration(
               
               hintText: 'Amount of Required Plasma',
               
               hintStyle: TextStyle(color: Colors.grey),
               border: InputBorder.none,
              
             ),
            ),
          ),
     
                 Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(top: 20,right: 10,bottom: 10,left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: 
            TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
            textAlign: TextAlign.start,
            obscureText: true,
             decoration: InputDecoration(
              prefixText: '+8801',prefixStyle: TextStyle(color: Colors.black),
               border: InputBorder.none,
              
             ),
            ),
          ),
     
                 Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(top: 20,right: 10,bottom: 10,left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: 
            TextField(
              keyboardType: TextInputType.number,
            textAlign: TextAlign.start,
             decoration: InputDecoration(
               
               hintText: 'Date',
               
               hintStyle: TextStyle(color: Colors.grey),
               border: InputBorder.none,
              
             ),
            ),
          ),
  
                 Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(top: 20,right: 10,bottom: 10,left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: 
            TextField(
              keyboardType: TextInputType.text,
            textAlign: TextAlign.start,
             decoration: InputDecoration(
               
               hintText: 'Name of Hospital',
               
               hintStyle: TextStyle(color: Colors.grey),
               border: InputBorder.none,
              
             ),
            ),
          ),
         
               
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Newsfeed()));
              });
            },
            child: Card(
                margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                
        child: 
        Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [Colors.black45,Colors.black54]
                    
                  )
                ),
                
                child: 
                Container(
                  padding: EdgeInsets.only(top: 7),
                  child: Text("Request",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),
                  
                  ),
                ),
                )
            ),
          )],
         
        ),
      ),
    );
  }
}