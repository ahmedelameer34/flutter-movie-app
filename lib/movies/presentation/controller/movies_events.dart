import 'package:equatable/equatable.dart';

abstract class MoviesEvents extends Equatable {
  const MoviesEvents();
  @override
  List<Object?> get props => throw UnimplementedError();
}

class MoviesGetNowPlayingEvent extends MoviesEvents {}

class MoviesGetPopularEvent extends MoviesEvents {}

class MoviesGetTopRatedEvent extends MoviesEvents {}
