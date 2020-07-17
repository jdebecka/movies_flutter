import '../constants.dart';
import '../constants.dart';

enum Endpoint {
  nowPlaying, apiKey, language
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
    }
  }
}

enum SearchURL {
  nowPlaying, images
}

extension SearchURLEX on SearchURL {
  String get completeURL {
    switch(this) {
      case SearchURL.nowPlaying:
        return  movieBaseURL + Endpoint.nowPlaying.endpoint + Endpoint.apiKey.endpoint + apiKey + Endpoint.language.endpoint;
      case SearchURL.images:
        return imageBaseURL;
    }
  }
}
