import 'package:flutter/material.dart';

class SignPanel extends StatefulWidget {
  @override
  _SignPanelState createState() => _SignPanelState();
}

class _SignPanelState extends State<SignPanel> {
  @override
  Widget build(BuildContext context) {

    Size size= MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    //return orientation== Orientation.landscape ? Scaffold(body: Center(child:  Text("Landscape mode not available yet!"),)) :
     return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan.shade300,
        body:
        Stack(
          children: <Widget>[
            Positioned(
              top: size.height* 0.1,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 0.5,
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 72.0),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Container(
                    height: size.height*0.20,
                    width: size.width*0.5,
                  ),
                ),
              ),
            ),

            Positioned(
              top: size.height*0.13,
              left: 0,
              right:0,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 40.0),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  height: size.height*0.65,
                  width: size.width*0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                      ),
                      Text('Sign Up', style: TextStyle(fontSize: 25.0, color: Colors.cyan.shade700, fontWeight: FontWeight.bold),),

                      SizedBox(
                        height: 45.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.email,
                              color: Colors.cyan,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text('Email Address', style: TextStyle(color: Colors.cyan, fontSize: 15.0)),

                          ],
                        ),
                      ),

                      Divider(
                        thickness: 1.0,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_outline,
                              color: Colors.cyan,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text('Password', style: TextStyle(color: Colors.cyan, fontSize: 15.0)),
                            Spacer(),
                            Opacity(
                              opacity: 0.6,
                              child: Icon(
                                Icons.visibility,
                                color: Colors.cyan,
                                size: 15.0,
                              ),
                            ),

                          ],
                        ),
                      ),

                      Divider(
                        thickness: 1.0,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_outline,
                              color: Colors.cyan,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text('Confirm Password', style: TextStyle(color: Colors.cyan, fontSize: 15.0)),
                            Spacer(),
                            Opacity(
                              opacity: 0.6,
                              child: Icon(
                                Icons.visibility,
                                color: Colors.cyan,
                                size: 15.0,
                              ),
                            ),

                          ],
                        ),
                      ),

                      Divider(
                        thickness: 1.0,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),

                      SizedBox(
                        height: 40.0,
                      ),

                      SizedBox(
                        width: 180.0,
                        height: 50.0,

                        child: Card(
                          color: Colors.cyan.shade700,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Center(child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),

                      Text('or using social media', style: TextStyle(color: Colors.cyan.shade700)),

                       SizedBox(
                         height: 8.0,
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
                         child: Row(
                           mainAxisSize: MainAxisSize.min,

                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.indigoAccent,
                                radius: 20.0,
                                child: Image.asset('assets/facebook.png'),
                              ),
                              SizedBox(
                                width:10.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 20.0,
                                child: Image.asset('assets/twitter.png'),
                              ),
                              SizedBox(
                                width:10.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 20.0,
                                child: Image.asset('assets/google_plus.png'),
                              ),
                              SizedBox(
                                width:10.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.indigo,
                                radius: 20.0,
                                child: Image.asset('assets/linkedin.png'),
                              ),

                            ],
                          ),
                       ),


                    ],
                  ),
                ),
              ),


            ),
            Positioned(
                bottom: size.height*0.05,
                left: size.width*0.21,

                child: FlatButton(
                  onPressed: ((){}),
                  color: Colors.cyan.shade300,
                  hoverColor: Colors.grey,
                  disabledColor: Colors.cyan.shade300,
                  child: Text('Already have an account? Sign In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
            ),



          ],
        ),

      ),
    );
  }
}
