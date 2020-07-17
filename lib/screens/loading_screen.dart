import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:movies/services/movieAPI.dart';

import 'home/home_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getMovieData();
  }

  void getMovieData() async {
    var movieData = await MovieModel().getNowPlaying();
    var genreData = await MovieModel().getGenre();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomeScreen(
        movieData: movieData, genre: genreData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.red,
          size: 100.0,
        ),
      ),
    );
  }
}
