import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repo/base_movies_repo.dart';

class TopRatedUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  TopRatedUsecase(this.baseMoviesRepository);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
