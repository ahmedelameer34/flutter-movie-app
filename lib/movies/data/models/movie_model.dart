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
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
      overView: json['overview'] ?? '',
      genreIds: json['genre_ids'] != null
          ? List<int>.from(json['genre_ids'])
          : <int>[],
      voteAverage: (json['vote_average'] ?? 0).toDouble(),
      releaseDate: json['release_date'] ?? '',
    );
  }

}
