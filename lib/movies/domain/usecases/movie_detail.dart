import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/core/usecase/base_usecase.dart';
import 'package:flutter_movie_app/movies/domain/entities/movie_detail.dart';

import '../../../core/error/failure.dart';
import '../repo/base_movies_repo.dart';

class MovieDetailUsecase
    extends BaseUseCase<MovieDetail, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  MovieDetailUsecase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
