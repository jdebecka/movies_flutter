import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/movie.dart';

import 'movie_card.dart';

class MovieCarousel extends StatefulWidget {
  MovieCarousel({Key key, this.movies}) : super(key: key);
  final List<Result> movies;

  @override
  _MovieCarouselState createState() => _MovieCarouselState(movies);
}

class _MovieCarouselState extends State<MovieCarousel> {
  final List<Result> movies;

  _MovieCarouselState(this.movies);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.all(defaultPadding),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) => MovieCard(movie: movies[index]),
      ),
    );
  }
}
