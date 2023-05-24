class ApiConstance {
  static const baseUrl = 'https://api.themoviedb.org/3';

  static const nowPlayingMoviePath = '$baseUrl/movie/now_playing?$apiKey';
  static const apiKey = 'api_key=70c3fb246cbcac46e1e3ba2510c34732';
  static const topRatedMoviePath = '$baseUrl/movie/top_rated?$apiKey';
  static const popularMoviePath = '$baseUrl/movie/popular?$apiKey';
  static const baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path) => '$baseImageUrl$path';
  static String movieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?$apiKey";
  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?$apiKey";
}
