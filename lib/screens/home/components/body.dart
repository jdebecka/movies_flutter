import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/genre.dart';
import 'package:movies/models/movie.dart';

import 'categories.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  final List<Result> movie;
  final Genre genre;

  const Body({Key key, this.movie, this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(movie);
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Categorylist(),
            SizedBox(height: defaultPadding),
            MovieCarousel(movies: movie, genres: genre,),
          ],
        ),
      ),
      margin: EdgeInsets.only(top: 45.0),
    );
  }
}
