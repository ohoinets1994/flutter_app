import 'package:flutter/material.dart';
import 'package:flutter_app/pages/lib_random.dart';
import 'package:flutter_app/pages/my_random.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPage createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  final _pages = <Widget>[MyRandom(), LibRandom()];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hey there app'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Screen1')),
          BottomNavigationBarItem(
              icon: Icon(Icons.android), title: Text('Screen2'))
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
