import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Result movie;

  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [defaultShadow],
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(imagesBaseUrl + movie.posterPath)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            movie.title,
            style: TextStyle(
                fontSize: 20, color: Colors.pink, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/star_fill.svg",
              height: 20,
            ),
            SizedBox(width: defaultPadding / 2),
            Text(
              "${movie.voteAverage}",
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        )
      ],
    );
  }
}
