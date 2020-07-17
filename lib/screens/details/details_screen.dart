import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';
import 'package:movies/screens/details/components/body.dart';

import '../../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Result movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie),
    );
  }
}
