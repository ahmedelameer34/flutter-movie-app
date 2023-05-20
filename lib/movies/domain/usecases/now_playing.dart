import 'package:flutter_movie_app/movies/domain/entities/movie.dart';

import '../repo/base_movies_repo.dart';

class NowPlayingUsecase {
  final BaseMoviesRepository baseMoviesRepository;

  NowPlayingUsecase(this.baseMoviesRepository);
  Future<List<Movie>> excute() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
