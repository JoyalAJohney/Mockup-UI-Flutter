import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Cast extends StatefulWidget {
  @override
  _CastState createState() => _CastState();
}

class _CastState extends State<Cast> {
  List<Map<String, dynamic>> casts = [
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
    {"name": "Robert Downey Jr.", "image": "assets/cast/rdj.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Avengers Cast",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
              color: Colors.white
            )
          ),
          SizedBox(height: 10.0),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: casts.map((cast) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.only(right: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(cast["image"]),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
