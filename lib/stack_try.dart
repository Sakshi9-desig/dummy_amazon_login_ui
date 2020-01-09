import 'package:flutter/material.dart';

class StackTry extends StatefulWidget {
  @override
  _StackTryState createState() => _StackTryState();
}

class _StackTryState extends State<StackTry> {

  List<Widget> getCards(){

    List<String> data =['ABOUT', 'IMAGES', 'EVENTS', 'EXAMS', 'CONTACT'];
    List<IconData> iconData=[Icons.book, Icons.image, Icons.event, Icons.note, Icons.phone];
      List<Widget> myCards= [];


      for (int i=0;i<data.length;i++){
        SizedBox A= SizedBox(

          width: 78.0,
          height: 80.0,
          child: Card(

              margin: EdgeInsets.all(5.0),
              //color: Colors.blue,
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      iconData[i],
                      //color: Colors.white,
                    ),
                    Text(data[i],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.0,
                        //color: Colors.white// )
                      ),)
                  ],
                ),
              )),
        );

        myCards.add(A);

      }
      return myCards;


  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Trying stack!!',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body:


          /*Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
           Container(
             height: 100.0,
             width: 200.0,
             color: Colors.green,

           ) ,Container(
             height: 80.0,
             width: 180.0,
             color: Colors.amber,

           ) ,Container(
             height: 60.0,
             width: 160.0,
             color: Colors.blue,
              child: Center(child: Text('Get Lost!', style: TextStyle(fontWeight: FontWeight.bold, ), textDirection: TextDirection.ltr))

           ) ,

          ]
        ),
      )*/



          Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  child: Container(
                      width: size.width,
                      height: size.height * 0.3,
                      child: Image.asset('assets/school.jpg')),
                ),
                Positioned(
                  left: size.width / 2 - 45,
                  top: size.height * 0.3 - 40,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 47.0,
                      child: Icon(
                        Icons.person,
                        size: 55.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: getCards(),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
