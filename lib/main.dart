import 'package:flutter/material.dart';
import 'package:movies/screens/home/home_screen.dart';
import 'package:movies/screens/loading_screen.dart';

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoadingScreen(),
    );
  }
}
