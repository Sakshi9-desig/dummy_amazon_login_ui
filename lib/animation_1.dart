import 'package:flutter/material.dart';

class AnimateStuff extends StatefulWidget {
  @override
  _AnimateStuffState createState() => _AnimateStuffState();
}

class _AnimateStuffState extends State<AnimateStuff> with SingleTickerProviderStateMixin{

  Animation animation;
  AnimationController animationController;
  double value;

  @override
  void initState() {
    value = 0;
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 7));
    animation = Tween<double>(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animationController,curve: Curves.bounceIn));

    animation.addListener((){
     setState(() {
       value = animation.value;
     });
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: size.height/2 - 250 * value,
              left: value * size.width,
              child: Container(
                width: 500 * value,
                height: 500 * value,
                child: FlutterLogo(),
              ),
            ),
            Positioned(
              top: size.height/2 - 250 * value,
              right: value * size.width,
              child: RotatedBox(
                quarterTurns: 2,
                child: Container(
                  width: 500 * value,
                  height: 500 * value,
                  child: FlutterLogo(),
                ),
              ),
            ),

            Positioned(
              left: size.width/2 - 250*value,
              top: value * size.height,
              child: RotatedBox(
                quarterTurns: 1,
                child: Container(
                  width: 500 * value,
                  height: 500 * value,
                  child: FlutterLogo(
                  ),
                ),
              ),
            ),

            Positioned(
              left: size.width/2 - 250*value,
              bottom: value * size.height,
              child: RotatedBox(
                quarterTurns: 3,
                child: Container(
                  width: 500 * value,
                  height: 500 * value,
                  child: FlutterLogo(),
                ),
              ),
            ),
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

          animationController.repeat();
        },
      ),
      
    );
  }
}
