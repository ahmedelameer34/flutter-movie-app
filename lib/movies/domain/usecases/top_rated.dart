import '../entities/movie.dart';
import '../repo/base_movies_repo.dart';

class TopRatedUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  TopRatedUsecase(this.baseMoviesRepository);
  Future<List<Movie>> excute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
