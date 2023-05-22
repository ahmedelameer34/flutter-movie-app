import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/core/utils/enums.dart';
import 'package:flutter_movie_app/movies/domain/entities/movie.dart';

class MoviesStates extends Equatable {
  final List<Movie> nowPlayingMovie;
  final RequestState nowPlayingMovieState;
  final String nowPlayingMessage;
  final List<Movie> popularMovie;
  final RequestState popularMovieState;
  final String popularMessage;
  final List<Movie> topRatedMovie;
  final RequestState topRatedMovieState;
  final String topRatedMessage;

  MoviesStates copyWith({
    List<Movie>? nowPlayingMovie,
    RequestState? nowPlayingMovieState,
    String? nowPlayingMessage,
    List<Movie>? popularMovie,
    RequestState? popularMovieState,
    String? popularMessage,
    List<Movie>? topRatedMovie,
    RequestState? topRatedMovieState,
    String? topRatedMessage,
  }) {
    return MoviesStates(
      nowPlayingMovie: nowPlayingMovie ?? this.nowPlayingMovie,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      nowPlayingMovieState: nowPlayingMovieState ?? this.nowPlayingMovieState,
      popularMovie: popularMovie ?? this.popularMovie,
      popularMessage: popularMessage ?? this.popularMessage,
      popularMovieState: popularMovieState ?? this.popularMovieState,
      topRatedMovie: topRatedMovie ?? this.topRatedMovie,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
      topRatedMovieState: topRatedMovieState ?? this.topRatedMovieState,
    );
  }

  const MoviesStates(
      {this.nowPlayingMovie = const [],
      this.nowPlayingMovieState = RequestState.loading,
      this.nowPlayingMessage = '',
      this.popularMovie = const [],
      this.popularMessage = '',
      this.popularMovieState = RequestState.loading,
      this.topRatedMovie = const [],
      this.topRatedMessage = '',
      this.topRatedMovieState = RequestState.loading});

  @override
  List<Object?> get props => [
        nowPlayingMovie,
        nowPlayingMovieState,
        nowPlayingMessage,
        popularMessage,
        popularMovie,
        popularMovieState,
        topRatedMessage,
        topRatedMovie,
        topRatedMovieState
      ];
}
