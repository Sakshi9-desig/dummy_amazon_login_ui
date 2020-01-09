import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked;

  @override
  void initState() {
    // TODO: implement initState
    isChecked = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'amazon',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  width: 90.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Sign-In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: (() {})),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                  ),
                  hintText: 'Email(phone for mobile accounts)',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                    ),
                  ),
                  /*disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12, ),
                  ),*/

                  hintText: 'Amazon Password',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.orange,
                    focusColor: Colors.blue,
                    hoverColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text('Show Password', style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    width: size.width,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.amber,
                          Colors.orange,
                        ],
                      ),
                    ),
                    child: Center(
                        child: Text('Sign-In',
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: RichText(
                text: TextSpan(
                  text: 'By continuing, you agree to Amazon\'s ',
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Conditions of Use ',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("cond");
                          }),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Privacy Notice',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("privacy");
                          }),
                    TextSpan(text: '.'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      height: 4.0,
                      thickness: 1.0,
                      color: Colors.grey,
                      //endIndent: 2.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('New to Amazon?', style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Divider(
                      height: 4.0,
                      thickness: 1.0,
                      color: Colors.grey,
                      //endIndent: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    width: size.width,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(color: Colors.grey),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.grey,
                          Colors.black54,
                        ],
                      ),
                    ),
                    child: Center(
                        child: Text('Create a new Amazon Account',
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 60.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.grey,
                    Colors.black26,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Conditions of Use',
                      style: TextStyle(color: Colors.blue)),
                  Text('Privacy Notice', style: TextStyle(color: Colors.blue)),
                  Text('Help', style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            Text(
              'copyright@Sakshi_Katiyar//@taught_by_Sarvesh_Chauhan',
              style: TextStyle(fontSize: 13.0, color: Colors.grey),
            ),
          ],
        ));
  }
}
