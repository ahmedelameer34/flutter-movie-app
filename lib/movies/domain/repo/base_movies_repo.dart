import 'package:dartz/dartz.dart';
import 'package:flutter_movie_app/movies/domain/entities/movie.dart';
import 'package:flutter_movie_app/movies/domain/entities/movie_detail.dart';

import '../../../core/error/failure.dart';
import '../entities/recommendations.dart';
import '../usecases/movie_detail.dart';
import '../usecases/recommendation.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, MovieDetail>> getMovieDetails(
      MovieDetailsParameters parameters);

  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters parameters);
}
