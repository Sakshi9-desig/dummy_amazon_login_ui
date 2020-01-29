import 'package:flutter/material.dart';
class TryNew extends StatefulWidget {
  @override
  _TryNewState createState() => _TryNewState();
}

class _TryNewState extends State<TryNew> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Production'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: ClipPath(
              clipper: FlowClipper(),
              child: Container(
                color: Colors.amber,
                width: size.width,
                height: size.height*0.3,
              ),
            ),
          ),

          Positioned(
            top: 10,
            left: 0,
            child: ClipPath(
              clipper: FlowClipper(),
              child: Container(
                color: Colors.amber.withOpacity(0.5),
                width: size.width,
                height: size.height*0.3,
              ),
            ),
          ),

          Positioned(
            top: 20,
            left: 0,
            child: ClipPath(
              clipper: FlowClipper(),
              child: Container(
                color: Colors.amber.withOpacity(0.2),
                width: size.width,
                height: size.height*0.3,
              ),
            ),
          ),


          Positioned(
            top: 150,
            left: 8,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.amber.shade800,
            ),
          ),

          Positioned(
            top: 150,
            left: 8,
            child: CircleAvatar(
              radius: 43,
              backgroundColor: Colors.amber.shade800.withOpacity(0.5),
            ),
          ),

          Positioned(
            top: 190,
            left: 100,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.amber.shade600,
            ),
          ),

          Positioned(
            top: 190,
            left: 100,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: Colors.amber.shade600.withOpacity(0.5),
            ),
          ),

          Positioned(
            top: 200,
            left: 180,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.amberAccent,
            ),
          ),

          Positioned(
            top: 200,
            left: 180,
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.amberAccent.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}

class FlowClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w=size.width;
    double h=size.height;

    Path path= Path();
    path.lineTo(0, 0);
    path.lineTo(w, 0);
    path.lineTo(w,h*0.5);
    path.quadraticBezierTo(w*0.5, h*0.8, 0, h*0.5);




    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}

