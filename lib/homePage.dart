import 'package:flutter/material.dart';

import 'carousel.dart';
import 'cast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currIndex = 0;
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // Body
      body: Center(
          child: ListView(
        children: <Widget>[
          SizedBox(height: 5.0),
          Carousel(),
          SizedBox(height: 5.0),
          Cast()
        ],
      )),
      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: _currIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text(""))
        ],
        onTap: (index) {
          setState(() {
            _currIndex = index;
          });
        },
      ),
    );
  }
}
