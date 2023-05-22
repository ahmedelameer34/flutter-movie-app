import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repo/base_movies_repo.dart';

class PopularUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  PopularUsecase(this.baseMoviesRepository);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
