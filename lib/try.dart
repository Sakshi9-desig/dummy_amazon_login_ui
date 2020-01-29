import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mera_app/clipped.dart';

class Try extends StatefulWidget {
  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {
  bool visible=true;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Icon(
            Icons.email,
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        endDrawer: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
          child: Drawer(
            elevation: 5.0,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWmrCQkRrBZBgv1PPKzbAP5rMzXGFj6Oz-JwxtkStCUBo8akMx')
                    ),

                  ),
                  child: Center(child: Text('POSSESSIONS', style: TextStyle(color: Colors.white),)),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  leading: Icon(
                    Icons.book,
                  ),
                  title: Text('BOOKS'),
                ),ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  leading: Icon(
                    Icons.book,
                  ),
                  title: Text('BOOKS'),
                ),ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  leading: Icon(
                    Icons.book,
                  ),
                  title: Text('BOOKS'),
                ),ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  leading: Icon(
                    Icons.book,
                  ),
                  title: Text('BOOKS'),
                ),

              ],
            ),
          ),
        ),

        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/skyscraper.jpg'),
                  ),
                ),

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.white.withOpacity(0.5),
                  ),

                ),
              ),
            ),

            Positioned(
              top: 50,
              left: 0,
              child: Container(
                width: size.width,
                height: size.height*0.1,
                color: Colors.teal.shade200,
                child: Center(child: Text('Check out the cool feature below!', style: TextStyle(color: Colors.black),)),
              ),
            ),

            Positioned(
              top: 130,
              right: 10,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 600),
                opacity: visible ? 0.0:1.0,
                child: Opacity(
                  opacity: 0.6,
                  child: FlatButton(
                    onPressed: ((){
                      setState(() {
                        visible=!visible;
                      });
                    }),
                    focusColor: Colors.lime,
                    splashColor: Colors.white,
                    color: Colors.blueGrey,
                    child: Center(child: Text('Click Me!', style: TextStyle(color: Colors.white),)),

                  ),
                ),
              ),

            ),

            Positioned(
              top: 130,
              left: 10,
            child: Opacity(
              opacity: 0.6,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 600),
                opacity: visible? 1.0:0.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                  hoverColor: Colors.cyan,
                  focusColor: Colors.lime,
                  splashColor: Colors.white,
                  onPressed: ((){
                    setState(() {
                      visible=!visible;
                    });
                  }),
                  child: Icon(
                    Icons.face,
                    color: Colors.white,
                  ),

                ),
              ),
            ),
            ),

            Positioned(
              top: 200,
              left: 0,
              child: Container(
                width: size.width,
                height: size.height*0.1,
                color: Colors.teal.shade200,
                child: Center(child: Text('Check out other feature below!', style: TextStyle(color: Colors.black),)),
              ),
            ),

            Positioned(
              top: 300,
              left: 110,

              child: FlatButton(
                color: Colors.blueGrey,
                focusColor: Colors.lime,
                splashColor: Colors.white,
                onPressed: ((){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                   return TryNew();
                  }));

                }),
                child: Center(child: Text('Click for new layout', style: TextStyle(color: Colors.white),)),
              ),
            ),

          ],
        ),

      ),
    );
  }
}
