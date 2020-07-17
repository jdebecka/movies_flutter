import 'package:movies/services/networking.dart';
import 'package:movies/services/location.dart';

const apiKey = 'e72ca729af228beabd5d20e3b7749713';

class MovieModel {
  Future<dynamic> getNowPlaying() async {
    NetworkHelper networkHelper = NetworkHelper(SearchURL.nowPlaying.completeURL);

    var moviesPlayingNow = await networkHelper.getData();
    return moviesPlayingNow;
  }
}
