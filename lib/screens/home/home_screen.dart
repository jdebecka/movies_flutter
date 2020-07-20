import 'package:flutter/material.dart';
import 'package:movies/screens/home/mobile/body.dart';
import 'package:movies/screens/home/web/body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({this.movieData});

  final movieData;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: BodyMobile(movie: movieData.results),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: BodyWeb(movie: movieData.results),
          );
        }
      },
    );
  }
}
