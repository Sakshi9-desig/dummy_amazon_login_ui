import 'package:flutter/material.dart';
class RibbonCurve extends StatefulWidget {
  @override
  _RibbonCurveState createState() => _RibbonCurveState();
}

class _RibbonCurveState extends State<RibbonCurve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Ok'),
      ),
      body:
        Center(
          child: ClipPath(
            clipper: CurveClipper(),
            child: Container(
              width: 200,
              height: 160,
              color: Colors.purple,
            ),
          ),
        ),
    );
  }
}

class CurveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w=size.width;
    double h=size.height;
    Path path=Path();

    /*path.lineTo(0, 0);
    path.lineTo(w, 0);
    path.quadraticBezierTo(w/3+150, h/3+150, 0,h);
    path.close();*/
    /*path.lineTo(0, 0);
    path.lineTo(h, 0);*/
    path.lineTo(0, 0);
    path.lineTo(w/3, h/2);
    path.lineTo(0,h);
    path.lineTo(w*0.3,h );
    path.quadraticBezierTo(7*w/6, 0.2*h+60 , w/1.5+50, h/2-30);
    //path.lineTo(w/1.5+50, h+150);
    //path.quadraticBezierTo(7*w/6, -10, 4*w/3, -20);
    //path.quadraticBezierTo(w+10, -10, w+20, -20);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}