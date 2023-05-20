import 'package:flutter_movie_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.overView,
      required super.genreIds,
      required super.voteAverage,
      required super.releaseDate});
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      overView: json['overview'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      voteAverage: json['vote_average'],
      releaseDate: json['release_date'],
    );
  }
}
