import 'package:flutter/material.dart';
class Try extends StatefulWidget {
  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Production'),
        centerTitle: true,
      ),
      body: ClipPath(
        clipper: FlowClipper(),
        child: Container(
          width: size.width,
          height: size.height*0.3,
        ),
      ),
    );
  }
}

class FlowClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}

