import 'package:flutter_movie_app/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepository {
  Future<List<Movie>> getNowPlayingMovies();
  Future<List<Movie>> getTopRatedMovies();
  Future<List<Movie>> getPopularMovies();
}
