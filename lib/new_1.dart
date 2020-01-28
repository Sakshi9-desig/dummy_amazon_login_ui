import 'package:flutter/material.dart';

class NewOther extends StatefulWidget {
  @override
  _NewOtherState createState() => _NewOtherState();
}

class _NewOtherState extends State<NewOther> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: FlutterLogo(
            size: 25.0,

          ),
        ),
        title: Text('Flutter', style: TextStyle(color:Colors.black87, fontSize: 25.0),),
        actions: <Widget>[
          FlatButton(
            onPressed: ((){}),
            hoverColor: Colors.white,
            child: Text('Docs'),
          ),
          FlatButton(
            onPressed: ((){}),
            hoverColor: Colors.white,
            child: Text('Showcase'),
          ),
          FlatButton(
            onPressed: ((){}),
            hoverColor: Colors.white,
            child: Text('Community'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: SizedBox(
              width: 40,

              child: TextField(
                showCursor: true,
                decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.lightBlue,
                     style: BorderStyle.solid,
                   ),
                 ),


                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: <Widget>[
                InkWell(
                  child: Container(
                    width: 26.0,
                    height: 26.0,
                    child: Image.network('https://www.freeiconspng.com/uploads/black-logo-twitter-26.png',
                      width: 24,
                      height: 24,),
                  ),
                ),

                Container(
                  width: 40.0,
                  height: 26.0,
                  child: Image.network('https://i.dlpng.com/static/png/6599776_preview.png',
                    width: 24,
                    height: 24,),
                ),

                InkWell(
                  child: Image.network('https://i.dlpng.com/static/png/5388873-github-logo-icon-of-glyph-style-available-in-svg-png-eps-ai-github-icon-png-256_256_preview.png',
                    width: 26,
                    height: 26,),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            child: FlatButton(
              onPressed: ((){}),
              color: Colors.blueAccent,
              child: Text('Get Started', style: TextStyle(color: Colors.white),),
            ),
          ),



        ],
      ),

      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xff123CA5),
          ),
        ],
      ),
    );
  }
}
