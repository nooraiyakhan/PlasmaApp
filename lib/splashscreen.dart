import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plasmabank/login.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  @override
  void initState(){
    super.initState();
    loadTimer();
    animationController= AnimationController(
      duration: Duration(seconds: 3),vsync: this);
      animation = Tween (begin: -1.0,end: 0.0).animate(
        CurvedAnimation(
          parent: animationController,curve: Curves.fastOutSlowIn
        )
      );
      animationController.forward();
  }
  Future<Timer> loadTimer() async{
    return new Timer (Duration(seconds: 4), onDoneLoading);
  }
  onDoneLoading() async{
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child){
        return Scaffold(
          backgroundColor: Colors.brown[50],
          body: Transform(transform: Matrix4.translationValues(animation.value *width, 0.0, 0.0),
          child: new Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/splash.jpg"),
          ),
          ),
        );
      },
    );
  }
}