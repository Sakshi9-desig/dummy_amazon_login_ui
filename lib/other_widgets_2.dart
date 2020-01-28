import 'package:flutter/material.dart';

class NextWidgetsTwo extends StatefulWidget {
  @override
  _NextWidgetsTwoState createState() => _NextWidgetsTwoState();
}

class _NextWidgetsTwoState extends State<NextWidgetsTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: FlutterLogo(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              //backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0))
              ),
              builder: (BuildContext context) {
                return Material(
                  color: Colors.orange.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))
                  ),
                  child: Container(
                    width: 200,
                   height: 200,
                    child: Center(
                      child: Container(
                        width: 150,
                        height: 100,
                        child: Text('This is Bottom Sheet'),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
