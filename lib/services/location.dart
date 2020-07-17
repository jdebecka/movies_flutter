import 'package:movies/models/movie.dart';

import '../constants.dart';
enum Endpoint {
  nowPlaying, apiKey, language, genres, movie
}

extension EndopointEx on Endpoint {
  String get endpoint {
    switch (this) {
      case Endpoint.nowPlaying:
        return '/now_playing';
      case Endpoint.apiKey:
        return '?api_key=';
      case Endpoint.language:
        return '&language=en-US';
      case Endpoint.movie:
        return '/movie/list';
      case Endpoint.genres:
        return '/genre';
    }
  }
}

enum SearchURL { nowPlaying, images, genres }

extension SearchURLEX on SearchURL {

  String get completeURL {
    switch (this) {
      case SearchURL.nowPlaying:
        return movieBaseURL + Endpoint.nowPlaying.endpoint +
            Endpoint.apiKey.endpoint + apiKey + Endpoint.language.endpoint;
      case SearchURL.images:
        return imagesBaseUrl;
      case SearchURL.genres:
        return movieBaseURL + Endpoint.genres.endpoint + Endpoint.movie.endpoint + Endpoint.apiKey.endpoint + apiKey + Endpoint.language.endpoint;
    }
  }
}
