import 'package:movies/services/networking.dart';
import 'package:movies/services/location.dart';
class MovieModel {
  Future<dynamic> getNowPlaying() async {
    NetworkHelper networkHelper = NetworkHelper(SearchURL.nowPlaying.completeURL);

    var moviesPlayingNow = await networkHelper.getData();
    return moviesPlayingNow;
  }
}
