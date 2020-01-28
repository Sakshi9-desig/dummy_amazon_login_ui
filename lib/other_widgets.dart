import 'package:flutter/material.dart';
import 'package:flutter_mera_app/edu_stuff.dart';
class NextWidgets extends StatefulWidget {

  @override
  _NextWidgetsState createState() => _NextWidgetsState();
}

class _NextWidgetsState extends State<NextWidgets> {

  int _selectedPage=0;
  final _pageOptions=[
   Tutorial(),
    Text('Read', style: TextStyle(fontSize: 24.0),),
    Text('Look', style: TextStyle(fontSize: 24.0),),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.power_settings_new,

        ),
        title: Center(child: Text('Bottom Nav')),
      ),
      body: Center(child: IndexedStack(
        index: _selectedPage,
        children: _pageOptions,
      )
      //_pageOptions[_selectedPage]
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        selectedItemColor: Colors.amber,
        selectedFontSize: 22.0,
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.security,
              color: Colors.red,
            ),
            title: Text('Security'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.red,
            ),
            title: Text('Book'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.visibility,
              color: Colors.red,
            ),
            title: Text('Eye'),
          ),
        ],
      ),

    );
  }
}
