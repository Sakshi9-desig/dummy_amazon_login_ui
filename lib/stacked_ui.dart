import 'package:flutter/material.dart';

class SomethingNew extends StatefulWidget {
  @override
  _SomethingNewState createState() => _SomethingNewState();
}

class _SomethingNewState extends State<SomethingNew> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff090233),
      appBar: AppBar(
        backgroundColor: Color(0xff090233),
        leading: Icon(
          Icons.dashboard,
          size: 26.0,
          color: Colors.white,
        ),
        actions: <Widget>[
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Text('Trending',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Chip(
                      label: Text('Hashtags'),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text('Stories',
                        style:
                            TextStyle(color: Colors.blue.shade600, fontSize: 16.0))
                  ],
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Container(
                height: size.height * 0.5,
                width: size.width*0.9,
                child: Stack(
                  children: <Widget>[

                    Positioned(
                      left: 68,
                      top: 50,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/five.png',
                            fit: BoxFit.fill,
                            height: size.height * 0.35 ,
                            width: size.width * 0.60,
                          )),
                    ),

                    Positioned(
                      left: 45,
                      top: 30,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/two.png',
                            fit: BoxFit.fill,
                            height: size.height * 0.43 ,
                            width: size.width * 0.60,
                          )),
                    ),
                    Positioned(
                      left: 15,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/one.png',
                            fit: BoxFit.cover,
                            height: size.height * 0.50,
                            width: size.width * 0.60,
                          )),
                    ),
                    Positioned(
                      left: 30,
                      top: size.height * 0.35,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("The beautiful landscapes", style: TextStyle(color: Colors.white, fontSize: 15, ), ),
                          Text("The wondrous ones!", style: TextStyle(color: Colors.white, fontSize: 15, ), ),
                          Chip(
                            label: Text('Know more'),
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Text('Favorite',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Chip(
                      label: Text('Places'),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text('Snaps',
                        style:
                        TextStyle(color: Colors.blue.shade600, fontSize: 16.0))
                  ],
                ),
              ),

              Container(
                height: size.height * 0.5,
                width: size.width*0.9,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 15,
                      top: 10,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/four.png',
                            fit: BoxFit.fill,
                            height: size.height * 0.35 ,
                            width: size.width * 0.60,
                          )),
                    ),
                  ],
                ),

              ),


            ],
          ),
        ],
      ),

    );
  }
}
