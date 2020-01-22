import 'package:flutter/material.dart';

class Website extends StatefulWidget {
  @override
  _WebsiteState createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -80,
            left: -70,
            child: CircleAvatar(
              backgroundColor: Colors.deepOrange,
              radius: 220.0,
            ),
          ),
          Positioned(
            top: -90,
            left: -100,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 200.0,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 150.0, vertical: 150.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 4.0,
              child: Container(
                width: size.width * 0.85,
                height: size.height * 0.72,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140.0, vertical: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'WELCOME TO',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'INFINITY',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Log in to get in the moment updates on the things',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                          Text(
                            'that interest you',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                            width: size.width * 0.2,
                            //height: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.perm_identity,
                                  size: 20.0,
                                  color: Colors.grey,
                                ),
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    height: 1.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SizedBox(
                            width: size.width * 0.2,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.perm_identity,
                                  size: 20.0,
                                  color: Colors.grey,
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    height: 1.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.blur_circular,
                                  size: 20.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: size.width * 0.2,
                            height: 50,
                            child: RaisedButton(
                                onPressed: (() {}),
                                color: Colors.orange,
                                hoverColor: Colors.amber,
                                focusColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          FlatButton(
                            onPressed: (() {}),
                            child: RichText(
                              text: TextSpan(
                                text: 'Don\'t have an account? ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Sign Up Now',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 130,
                                  child: Divider(
                                    color: Colors.grey,
                                    endIndent: 8,
                                  ),
                                ),
                                Text(
                                  'Or',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 130,
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Continue with social media',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.indigo,
                                radius: 20.0,
                                child: Image.asset('assets/facebook.png'),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.lightBlueAccent,
                                radius: 20.0,
                                child: Image.asset('assets/twitter.png'),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 20.0,
                                child: Image.asset('assets/google_plus.png'),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 20.0,
                                child: Image.asset(
                                  'assets/linkedin.png',
                                  color: Colors.indigo,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      color: Colors.orange,
                      width: size.width * 0.425,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Opacity(
                                opacity: 0.5,
                                child: Image.asset(
                                  'assets/skyscraper.jpg',
                                  fit: BoxFit.fill,
                                  width: size.width * 0.425,
                                  height: size.height * 0.72,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            right: -40,
            child: CircleAvatar(
              backgroundColor: Colors.deepOrange,
              radius: 65.0,
            ),
          ),
          Positioned(
            bottom: -50,
            right: -40,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 60.0,
            ),
          ),
        ],
      ),
    );
  }
}
