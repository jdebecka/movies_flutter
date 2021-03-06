import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/movie.dart';

import 'categories.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  final List<Result> movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Categorylist(),
            SizedBox(height: defaultPadding),
            MovieCarousel(movies: movie),
            SizedBox(height: defaultPadding),
            Center(
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/tmdb_logo.jpg'),
                ),
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
      margin: EdgeInsets.only(top: 45.0),
    );
  }
}
