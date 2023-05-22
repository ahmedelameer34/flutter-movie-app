import 'package:dartz/dartz.dart';
import 'package:flutter_movie_app/movies/domain/entities/movie.dart';

import '../../../core/error/failure.dart';
import '../repo/base_movies_repo.dart';

class NowPlayingUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  NowPlayingUsecase(this.baseMoviesRepository);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
