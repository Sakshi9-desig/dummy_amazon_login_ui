import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: Colors.teal.shade300,
            child: Icon(
              Icons.book,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: 
      Stack(
        children: <Widget>[
          Positioned(
            //right: size.width*0.1,
            top: size.height*0.01,
            child: Opacity(
              opacity: 0.5,
              child: Container(
                child: Image.asset('assets/bush.png'),

              ),
            ),
          ),

          Positioned(
            top: size.height*0.03,
            right: size.width*0.35,
            child: Text('SCIENCE', style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),),
          ),

          Positioned(
            bottom: -12,
            right: -16,
            child: Opacity(
              opacity: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                //color: Colors.white,
                height: size.height*0.7,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 15.0),
                  child: Text('Chapters', style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 400,
            left: size.width*0.1-55,
            child:
             Opacity(
               opacity: 0.5,
               child: Row(
                 children: <Widget>[
                   Container(
                     height: 50,
                     width: 150,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
                     ),
                     child: Center(child: Text('Chapter 1', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

                   ),

                   Padding(
                     padding: const EdgeInsets.only(left: 12.0),
                     child: Text('BACTERIA', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold )),
                   ),
                 ],
               ),
             ),
          ),

          Positioned(
            bottom: 330,
            left: size.width*0.1-55,
            child:
            Opacity(
              opacity: 0.5,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
                    ),
                    child: Center(child: Text('Chapter 2', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('ACIDS AND BASES', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold )),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 260,
            left: size.width*0.1-55,
            child:
            Opacity(
              opacity: 0.5,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
                    ),
                    child: Center(child: Text('Chapter 3', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('ELECTRICITY', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold )),
                  ),
                ],
              ),
            ),
          ),


          Positioned(
            bottom: 190,
            left: size.width*0.1-55,
            child:
            Opacity(
              opacity: 0.5,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
                    ),
                    child: Center(child: Text('Chapter 4', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('PLANTS', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold )),
                  ),
                ],
              ),
            ),
          ),


          Positioned(
            bottom: 150,
            right: size.width*0.1-60,
            child:
            Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
              ),
              child: Center(child: Text('Take', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

            ),
          ),

          Positioned(
            bottom: 120,
            right: size.width*0.1-60,
            child:
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.amber.shade300,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
              ),
              child: Center(child: Text('Take Test', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

            ),
          ),

          Positioned(
            bottom: 90,
            right: size.width*0.1-60,
            child:
            Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.amber.shade200
                ,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
              ),
              child: Center(child: Text('Take Test', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

            ),
          ),

          Positioned(
            bottom: 60,
            right: size.width*0.1-60,
            child:
            Container(
              height: 40,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
              ),
              child: Center(child: Text('Take Test', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

            ),
          ),

          Positioned(
            bottom: 10,
            right: size.width*0.1-60,
            child:
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
              ),
              child: Center(child: Text('Take Test', style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal, fontSize: 15),)),

            ),
          ),

        ],
      ),
      
    );
  }
}
