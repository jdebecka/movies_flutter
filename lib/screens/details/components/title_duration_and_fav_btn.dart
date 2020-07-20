import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Result movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: defaultPadding / 2),
                Row(
                  children: <Widget>[
                    Text(
                      '${new DateFormat.yMMMMd('en_US').format(movie.releaseDate)}',
                      style: TextStyle(color: textLightColor),
                    ),
                    SizedBox(width: defaultPadding),
                    Text(
                      "PG-13",
                      style: TextStyle(color: textLightColor),
                    ),
                    SizedBox(width: defaultPadding),
                    Text(
                      "2h 32min",
                      style: TextStyle(color: textLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
