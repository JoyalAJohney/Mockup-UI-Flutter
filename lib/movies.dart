import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Continue Watching",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Colors.white
                )
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Colors.redAccent
                )
              ),
            ],
          ),
          SizedBox(height: 10.0),
          // Movies List
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MovieCard("assets/civilWar.jpg","Civil War","9.1"),
              MovieCard("assets/strange.jpg","Doctor Strange","9.1"),
              MovieCard("assets/winter.jpg","Winter Soldier","9.1"),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MovieCard("assets/Endgame.jpg","EndGame","9.1"),
              MovieCard("assets/Endgame.jpg","EndGame","9.1"),
              MovieCard("assets/Endgame.jpg","EndGame","9.1"),
            ],
          )
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {

  final String image,name,rating;

  MovieCard(this.image,this.name,this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 140.0,
            width: 100.0,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 3.0),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "IMDB $rating",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}