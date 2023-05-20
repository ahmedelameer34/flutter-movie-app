import '../entities/movie.dart';
import '../repo/base_movies_repo.dart';

class PopularUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  PopularUsecase(this.baseMoviesRepository);
  Future<List<Movie>> excute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
