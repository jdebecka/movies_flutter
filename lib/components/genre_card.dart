import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;

  const GenreCard({Key key, this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 4,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(color: textColor.withOpacity(0.8), fontSize: 16),
      ),
    );
  }
}
