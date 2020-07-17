import 'package:http/http.dart' as http;

import '../models/movie.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      Movie movieData = movieFromJson(data);

      movieData.results.forEach((element) {
        print(element.originalTitle);
      });
      return movieData;
    } else {
      print(response.statusCode);
    }
  }
}
