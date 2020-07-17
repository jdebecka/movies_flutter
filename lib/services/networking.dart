import 'package:http/http.dart' as http;
import 'package:movies/models/genre.dart';

import '../models/movie.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getMovieData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      Movie movieData = movieFromJson(data);
      
      return movieData;
    } else {
      print(response.statusCode);
    }
  }
  Future getGenereData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      Genre genereData = genreFromJson(data);
      return genereData;
    } else {
      print(response.statusCode);
    }
  }
}
