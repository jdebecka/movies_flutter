import 'dart:convert';

Movie movieFromJson(String str) => Movie.fromJson(json.decode(str));

String movieToJson(Movie data) => json.encode(data.toJson());

class Movie {
  Movie({
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.releaseDate,
    this.popularity,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  int id;
  String name;
  String overview;
  String posterPath;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  DateTime releaseDate;
  double popularity;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        backdropPath: json["backdrop_path"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        releaseDate: DateTime.parse(json["release_date"]),
        popularity: json["popularity"].toDouble(),
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "overview": overview,
        "poster_path": posterPath,
        "backdrop_path": backdropPath,
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "release_date":
            "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "popularity": popularity,
        "title": title,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };
}
