import 'package:flutter/material.dart';
class Annie extends StatefulWidget {
  @override
  _AnnieState createState() => _AnnieState();
}

class _AnnieState extends State<Annie> with SingleTickerProviderStateMixin{

  Animation animation;
  AnimationController animationController;

  @override
  void initState(){
    animationController=AnimationController(vsync: this, duration: Duration(milliseconds: 1600));
    animation= Tween<double>(begin: 0.0,end: 800.0).animate(CurvedAnimation(parent: animationController,curve: Curves.bounceOut));

    animation.addListener((){
      setState(() {
        //value = animation.value;
      });

      super.initState();
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amber,
        width:animation.value,
        height: 100,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

          animationController.forward();
        },
      ),
    );
  }
}
