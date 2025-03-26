import 'package:movie_app/core/helper/constants.dart';

class ApiHelper{
  static const String popularApi = "https://api.themoviedb.org/3/movie/popular?api_key=${AppConstants.apiKey}";
  static const String nowPlayingApi = "https://api.themoviedb.org/3/movie/now_playing?api_key=${AppConstants.apiKey}";
  static const String topRatedApi = "https://api.themoviedb.org/3/movie/top_rated?api_key=${AppConstants.apiKey}";
  static const String upcomingApi = "https://api.themoviedb.org/3/movie/upcoming?api_key=${AppConstants.apiKey}";
}