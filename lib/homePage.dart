import 'package:flutter/material.dart';

import 'carousel.dart';

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
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            Carousel()
          ],
        ),
      ),
      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("")
          ),
        ],
        onTap: (index){
          setState(() {
            _currIndex = index;
          });
        },
      ),
    );
  }
}