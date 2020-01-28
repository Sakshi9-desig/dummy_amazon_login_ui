import 'dart:math';

import 'package:flutter/material.dart';
class AnimateStuffTwo extends StatefulWidget {
  @override
  _AnimateStuffTwoState createState() => _AnimateStuffTwoState();
}

class _AnimateStuffTwoState extends State<AnimateStuffTwo> with SingleTickerProviderStateMixin{

  //Animation animation;
  AnimationController animationController;
  //double value;


  @override
  void initState(){
    //value=0;
    animationController=AnimationController(vsync: this, duration: Duration(seconds: 10));
   // animation =Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInCirc));

    /*animation.addListener((){
      setState(() {



      });
    });*/
    super.initState(

    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget child) {
            return Transform.rotate(angle: animationController.value*2.0* pi,
            child: child,);

          },
          child: Container(
            width: 50,
            height: 50,
            color: Colors.cyan,
            child: Center(child: Text("ok")),
          ),


        ),
      ),
    );
  }
}
