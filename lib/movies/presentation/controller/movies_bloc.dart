import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/core/usecase/base_usecase.dart';
import 'package:flutter_movie_app/core/utils/enums.dart';
import 'package:flutter_movie_app/movies/domain/usecases/now_playing.dart';
import 'package:flutter_movie_app/movies/domain/usecases/popular.dart';
import 'package:flutter_movie_app/movies/domain/usecases/top_rated.dart';
import 'package:flutter_movie_app/movies/presentation/controller/movies_events.dart';
import 'package:flutter_movie_app/movies/presentation/controller/movies_states.dart';

class MoviesBloc extends Bloc<MoviesEvents, MoviesStates> {
  final NowPlayingUsecase nowPlayingUsecase;
  final PopularUsecase popularUsecase;
  final TopRatedUsecase topRatedUsecase;
  MoviesBloc(this.nowPlayingUsecase, this.popularUsecase, this.topRatedUsecase)
      : super(const MoviesStates()) {
    on<MoviesGetNowPlayingEvent>(_getNowPlayingMovies);
    on<MoviesGetPopularEvent>(_getPopularMovies);
    on<MoviesGetTopRatedEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
      MoviesGetNowPlayingEvent event, Emitter<MoviesStates> emit) async {
    final result = await nowPlayingUsecase(const NoParameters());
    //emit(const MoviesStates(nowPlayingMovieState: RequestState.loading));
    result.fold(
        (l) => emit(state.copyWith(
            nowPlayingMovieState: RequestState.error,
            nowPlayingMessage: l.message)),
        (r) => emit(state.copyWith(
            nowPlayingMovie: r, nowPlayingMovieState: RequestState.loaded)));
  }

  FutureOr<void> _getTopRatedMovies(
      MoviesGetTopRatedEvent event, Emitter<MoviesStates> emit) async {
    final result = await topRatedUsecase(const NoParameters());
    //  emit(const MoviesStates(topRatedMovieState: RequestState.loading));
    result.fold(
        (l) => emit(state.copyWith(
            topRatedMovieState: RequestState.error,
            topRatedMessage: l.message)),
        (r) => emit(state.copyWith(
            topRatedMovie: r, topRatedMovieState: RequestState.loaded)));
  }

  FutureOr<void> _getPopularMovies(
      MoviesGetPopularEvent event, Emitter<MoviesStates> emit) async {
    final result = await popularUsecase(const NoParameters());
    //emit(const MoviesStates(popularMovieState: RequestState.loading));
    result.fold(
        (l) => emit(state.copyWith(
            popularMovieState: RequestState.error, popularMessage: l.message)),
        (r) => emit(state.copyWith(
            popularMovie: r, popularMovieState: RequestState.loaded)));
  }
}
