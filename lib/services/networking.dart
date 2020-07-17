import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/services/location.dart';
import '../constants.dart';
import '../models/movie.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
