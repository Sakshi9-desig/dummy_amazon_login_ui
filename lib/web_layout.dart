import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutWeb extends StatefulWidget {
  @override
  _CheckoutWebState createState() => _CheckoutWebState();
}

class _CheckoutWebState extends State<CheckoutWeb> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.lime),
          backgroundColor: Colors.white,
          elevation: 2.0,
         /* leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),*/
          title: Text(
            'SHOPHOLICS',
            style: TextStyle(
                color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                //height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for anything!',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(11),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.lime)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.lime.shade900)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.green)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.lime,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(child: buildDrawer(size),),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.lime.shade100,
                width: size.width,
                height: size.height*0.05,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     FlatButton(
                       onPressed: ((){}),
                       //color: Colors.lime,
                       hoverColor: Colors.lime,
                       focusColor: Colors.red,
                       child: Text('Categories', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                     ),
                      VerticalDivider(
                        thickness: 2.0,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                      FlatButton(
                       onPressed: ((){}),
                       //color: Colors.lime,
                       hoverColor: Colors.lime,
                       focusColor: Colors.red,
                       child: Text('Recommended', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                     ),
                      VerticalDivider(
                        thickness: 2.0,
                        indent: 10.0,
                        endIndent: 10.0,
                      ),
                      FlatButton(
                       onPressed: ((){}),
                       //color: Colors.lime,
                       hoverColor: Colors.lime,
                       focusColor: Colors.red,
                       child: Text('Trending', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                     ),


                    ],
                  ),


                ),
              ),

              SizedBox(
                height: 25.0,
              ),

              Text('Do not miss out!', style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),),
              Text('Recommended for you', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),

            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildDrawer(Size size) {
    return SizedBox(
          height: size.height,
          //width: size.width * 0.2,
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 18),
                child: CircleAvatar(
                  backgroundColor: Colors.lime,
                  radius: 40.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Michael Santiff',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              Text(
                'Michael Santiff',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.amber.shade300,
                      radius: 18.0,
                      child: Image.asset('assets/flower.png',),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.lightBlue.shade300,
                      radius: 18.0,
                      child: Image.asset('assets/mountain.png',),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.pink.shade300,
                      radius: 18.0,
                      child: Image.asset('assets/cactus.png',),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              Column(
                children: <Widget>[
                  ListTile(
                    onTap: ((){
                      Navigator.pop(context);
                    }),
                    leading: Icon(
                      Icons.headset,
                      //size: 15.0,
                      color: Colors.black,
                    ),
                    title: Text('Games'),
                    trailing: Container(
                      height:15.0,
                      width: 15.0,
                      color: Colors.red,
                      child: Center(child: Text('2' )),
                    ),

                  ),
                 Row(
                   children: <Widget>[

                     Padding(
                       padding: const EdgeInsets.only(left: 70),
                       child: Text('Competitions'),
                     ),
                   ],
                 ),
                  SizedBox(
                    height: 13.0
                  ),
                  Row(
                   children: <Widget>[

                     Padding(
                       padding: const EdgeInsets.only(left: 70),
                       child: Text('Pending'),
                     ),
                   ],
                 ),



                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: ListTile(
                      onTap: ((){
                        Navigator.pop(context);
                      }),
                      leading: Icon(
                        Icons.video_library,
                        //size: 15.0,
                        color: Colors.black,
                      ),
                      title: Text('Videos'),
                      trailing: Container(
                        height:15.0,
                        width: 15.0,
                        color: Colors.green,
                        child: Center(child: Text('4' )),
                      ),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.photo,
                        //size: 15.0,
                        color: Colors.black,
                      ),
                      title: Text('Photos'),
                      trailing: Container(
                        height:15.0,
                        width: 15.0,
                        color: Colors.orange,
                        child: Center(child: Text('6' )),
                      ),

                    ),
                  ),
                ],
              ),

            ],
          ),
        );
  }
}
