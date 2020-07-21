import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';

import 'categories.dart';
import 'movie_carousel.dart';

class BodyWeb extends StatelessWidget {
  final List<Result> movie;

  const BodyWeb({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
            children: <Widget>[
              CategoryList(),
              MovieCarousel(movies: movie),
              Center(
                child: Container(
                  child: Image(
                    image: AssetImage('assets/images/tmdb_logo.jpg'),
                  ),
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 15.0)),
    );
  }
}
