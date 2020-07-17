import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

import 'categories.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Categorylist(),
            SizedBox(height: defaultPadding),
            MovieCarousel(),
          ],
        ),
      ),
      margin: EdgeInsets.only(top: 45.0),
    );
  }
}
