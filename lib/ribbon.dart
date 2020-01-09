import 'package:flutter/material.dart';

class Ribbon extends StatefulWidget {
  @override
  _RibbonState createState() => _RibbonState();
}

class _RibbonState extends State<Ribbon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RIBBON'),
      ),
      body: Center(
        child: ClipPath(
          clipper: RibbonClipper(),
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),)

          /*Container(
            color: Colors.lightBlue,
            width: 400.0,
            height: 60.0,
          ),
        ),*/
      ),
    );
  }
}

class RibbonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();

    /*path.lineTo(0, 0);
    path.lineTo(w, 0);
    path.lineTo(w-20, h/2);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();*/

    path.lineTo(0, h-30);
    path.lineTo(w-30, 0);
    path.lineTo(w, 0);
    path.lineTo(0, h);
    path.close();


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
