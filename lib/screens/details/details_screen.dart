import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';
import 'package:movies/screens/details/mobile/body.dart';
import 'package:movies/screens/details/web/body.dart';

import '../../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Result movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: BodyMobile(movie: movie),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: BodyWeb(movie: movie),
          );
        }
      },
    );
  }
}
