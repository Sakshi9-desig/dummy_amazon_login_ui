import 'package:flutter/material.dart';

class Buystuff extends StatefulWidget {
  @override
  _BuystuffState createState() => _BuystuffState();
}

class _BuystuffState extends State<Buystuff> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.person,
          color: Colors.white,
          size: 30.0,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          //alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.75,
                width: size.width,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 0,
              child: ClipPath(
                clipper: DomeShape(),
                child: Container(
                  width: size.width,
                  height: size.height * 0.25,
                  color: Colors.blue,
                ),
              ),
            ),
            Positioned(
              left: size.width * 0.25,
              top: size.height *0.02,
              child: SizedBox(
                width: 200,
                height: 200,
                child: Card(
                  elevation: 10.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      children: <Widget>[
                        Text('80', style: TextStyle(fontSize: 50.0, color: Colors.black38, fontWeight: FontWeight.bold)),
                        Text('%', style: TextStyle(fontSize: 15.0, color: Colors.black38, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.30,
              left: size.width * 0.38,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.brightness_1,
                      size: 12.0,
                      color: Colors.grey,
                    ),Icon(
                      Icons.brightness_1,
                      size: 12.0,
                      color: Colors.blue,
                    ),Icon(
                      Icons.brightness_1,
                      size: 12.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.45,
              left: size.width * 0.10,
              child: Text('Performance Parameters',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  )),
            ),
            Positioned(
              top: size.height * 0.49,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.only(bottom: 32),
                //height: 240.0,
                width: size.width,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 20.0,
                          ),
                          /* SizedBox(
                              width: 15.0,
                            ),*/
                          Text('Efficient working',
                              style: TextStyle(color: Colors.black38)),
                          /*SizedBox(
                              width: 45.0,
                            ),*/

                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.8,
                      indent: 8.0,
                      endIndent: 8.0,
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 20.0,
                          ),
                          /*SizedBox(
                              width: 15.0,
                            ),*/
                          Text('Reduced Friction',
                              style: TextStyle(color: Colors.black38)),
                          /*SizedBox(
                              width: 45.0,
                            ),*/

                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.8,
                      indent: 8.0,
                      endIndent: 8.0,
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 20.0,
                          ),
                          /*SizedBox(
                              width: 15.0,
                            ),*/
                          Text('Net Output',
                              style: TextStyle(color: Colors.black38)),
                          /*SizedBox(
                              width: 45.0,
                            ),*/

                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.8,
                      indent: 8.0,
                      endIndent: 8.0,
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 20.0,
                          ),
                          /*SizedBox(
                              width: 15.0,
                            ),*/
                          Text('Total Consumption',
                              style: TextStyle(color: Colors.black38)),
                          /*SizedBox(
                              width: 45.0,
                            ),*/

                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.5,
                    spreadRadius: 2.0,
                  )
                ]),
              ),
            ),
            Positioned(
              top: size.height * 0.79,
              right: size.width * 0.18,
              child: SizedBox(
                height: 50.0,
                width: size.width * 0.65,
                child: Card(
                  color: Colors.blue,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: <Widget>[
                        Text('GET STARTED',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 18.0,
                        ),
                        Opacity(
                            opacity: 1.0,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              color: Colors.white,
                            )),
                        Opacity(
                            opacity: 0.8,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 18.0,
                              color: Colors.white,
                            )),
                        Opacity(
                            opacity: 0.6,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15.0,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DomeShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.lineTo(0, 0);
    path.lineTo(w, 0);
    path.lineTo(w, h);
    path.quadraticBezierTo(w / 2, h - 70, 0, h);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
