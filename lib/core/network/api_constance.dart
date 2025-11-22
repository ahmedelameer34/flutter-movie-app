import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstance {
  static const baseUrl = 'https://api.themoviedb.org/3';

 
 static String get apiKey => dotenv.env["MOVIES_API_KEY"] ?? '';

  
  static String get nowPlayingMoviePath =>
      '$baseUrl/movie/now_playing?api_key=$apiKey';

  static String get topRatedMoviePath =>
      '$baseUrl/movie/top_rated?api_key=$apiKey';

  static String get popularMoviePath =>
      '$baseUrl/movie/popular?api_key=$apiKey';

  static const baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path) => '$baseImageUrl$path';

  static String movieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apiKey";

  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";
}
