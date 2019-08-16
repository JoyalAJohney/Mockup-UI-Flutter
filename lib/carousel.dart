import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      autoPlay: true,
      height: 200.0,
      enableInfiniteScroll: true,
      items: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage("assets/Endgame.jpg"),
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "EndGame",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                      ),
                    ),
                    Text(
                      "In Cinemas nearby",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}