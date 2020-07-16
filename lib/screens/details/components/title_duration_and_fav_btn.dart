import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/movie.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

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
                      '${movie.year}',
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
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              onPressed: () {},
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
