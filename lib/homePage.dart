import 'package:flutter/material.dart';

import 'carousel.dart';
import 'cast.dart';
import 'movies.dart';

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
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: <Widget>[Icon(Icons.notifications, color: Colors.white)],
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Marvel",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Text(
                  " Movies",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
          )),
      // Body
      body: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              // height: 500.0,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 5.0),
                  Carousel(),
                  SizedBox(height: 2.0),
                  Cast(),
                  SizedBox(height: 2.0),
                  Movies()
                ],
              ),
            ),
          )
        ],
      ),
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
