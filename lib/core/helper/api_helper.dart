import 'package:movie_app/core/helper/constants.dart';

class ApiHelper{
  //movie apis
  static const String popularApi = "https://api.themoviedb.org/3/movie/popular?api_key=${AppConstants.apiKey}";
  static const String nowPlayingApi = "https://api.themoviedb.org/3/movie/now_playing?api_key=${AppConstants.apiKey}";
  static const String topRatedApi = "https://api.themoviedb.org/3/movie/top_rated?api_key=${AppConstants.apiKey}";
  static const String upcomingApi = "https://api.themoviedb.org/3/movie/upcoming?api_key=${AppConstants.apiKey}";
  static const String trendingApi = "https://api.themoviedb.org/3/trending/movie/day?api_key=${AppConstants.apiKey}";

 //tv series apis
 static const String onAirApi = "https://api.themoviedb.org/3/tv/on_the_air?api_key=${AppConstants.apiKey}";
 static const String popularTvApi = "https://api.themoviedb.org/3/tv/popular?api_key=${AppConstants.apiKey}";
 static const String topRatedTvApi = "https://api.themoviedb.org/3/tv/top_rated?api_key=${AppConstants.apiKey}";
}
