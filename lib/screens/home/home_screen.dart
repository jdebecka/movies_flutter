import 'package:flutter/material.dart';
import 'package:movies/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({this.movieData});

  final movieData;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),

    );
  }
}
