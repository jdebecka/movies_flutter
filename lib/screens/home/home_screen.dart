import 'package:flutter/material.dart';
import 'package:movies/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({this.movieData, this.genre});

  final movieData;
  final genre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        movie: movieData.results, genre: genre,
      ),
    );
  }
}