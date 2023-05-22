import 'package:flutter_movie_app/movies/data/data%20source/remote/remote_date_source.dart';
import 'package:flutter_movie_app/movies/data/repo/movie_repo.dart';
import 'package:flutter_movie_app/movies/domain/repo/base_movies_repo.dart';
import 'package:flutter_movie_app/movies/domain/usecases/now_playing.dart';
import 'package:flutter_movie_app/movies/domain/usecases/popular.dart';
import 'package:flutter_movie_app/movies/domain/usecases/top_rated.dart';
import 'package:flutter_movie_app/movies/presentation/controller/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());

    /// usecase
    sl.registerLazySingleton(() => PopularUsecase(sl()));
    sl.registerLazySingleton(() => NowPlayingUsecase(sl()));
    sl.registerLazySingleton(() => TopRatedUsecase(sl()));

    /// reposiory

    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    /// bloc

    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
  }
}
