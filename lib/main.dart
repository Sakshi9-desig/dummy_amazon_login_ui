// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_mera_app/login.dart';
import 'package:flutter_mera_app/ribbon.dart';
import 'package:flutter_mera_app/stack_try.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: Ribbon()
      //home: StackTry()
      home: Login()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/


  List<String> data = ['Rajat','Sarvesh','Nancy','Sakshi','Nishant'];
  List<String> dataDes = ['KUTTA','BHALUU','EXTINCT','SWEET','ANGRY'];
  List<Icon> dataIcon = [Icon(Icons.airline_seat_legroom_extra),Icon(Icons.message), Icon(Icons.repeat), Icon(Icons.save), Icon(Icons.forward)];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list tiling!'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {

          print('the value of index is $index');


        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: dataIcon[index],
            ),
            title: Text('${data[index]}'),
            subtitle: Text('${dataDes[index]}'),
            trailing: Icon(
              Icons.add_alert,
              color: Colors.lightBlue,
              size: 22.0,
            ),
          ),
        );

      },)
    );
  }
}


/*Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.refresh,
              ),
            ),
            title: Text('Freshen Up!'),
            subtitle: Text('Come on!!'),
            trailing: Icon(
              Icons.add_alert,
              color: Colors.lightBlue,
              size: 22.0,
            ),
          ),
        ),*/