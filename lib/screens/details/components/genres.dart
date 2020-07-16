import 'package:flutter/material.dart';
import 'package:movies/components/genre_card.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genre.length,
          itemBuilder: (context, index) => GenreCard(
            genre: movie.genre[index],
          ),
        ),
      ),
    );
  }
}
