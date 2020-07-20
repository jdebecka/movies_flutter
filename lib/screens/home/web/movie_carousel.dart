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
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: initialPage,
    );
  }

  PageController _pageController;
  int initialPage = 1;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(vertical: defaultPadding),
                child: MovieCard(
                  movie: movies[index],
                ),
              )),
    );
  }
}
