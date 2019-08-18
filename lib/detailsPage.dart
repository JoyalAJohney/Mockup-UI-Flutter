import 'package:flutter/material.dart';
import 'package:mockup_ui/cast.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Movie details
          Container(
            child: Column(
              children: <Widget>[
                // Top Image
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.greenAccent,
                    child: Image(
                      image: AssetImage("assets/infinityWar.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Bottom details
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        // Movie Name
                        Container(
                          padding: EdgeInsets.only(right: 20.0,left: 10.0,top: 10.0,bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Avengers:Infinity War",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),
                              ),
                              // Movie Rating
                              Container(
                                padding: EdgeInsets.only(right: 70.0),
                                child: IconTheme(
                                  data: IconThemeData(
                                    color: Colors.amber,
                                    size: 25.0
                                  ),
                                  child: StarDisplay()
                                )
                              ),
                            ],
                          ),
                        ),
                        Cast(),
                        // Description
                        Container(
                          padding: EdgeInsets.all(10.0),
                          // color: Colors.blueAccent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 7.0),
                              Text(
                                "Description",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.white
                                )
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          // Movie Image
          Positioned(
            top: 140.0,
            left: 15.0,
            child: Container(
              height: 150.0,
              width: 120.0,
              color: Colors.blueAccent,
              child: Image(
                image: AssetImage("assets/movie.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      )
    );
  }
}


class StarDisplay extends StatelessWidget {
  final int value = 4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index){
        return Icon(
          index < value ? Icons.star : Icons.star_border
        );
      }),
    );
  }
}