import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/core/helper/api_helper.dart';
import 'package:movie_app/core/models/movie_model.dart';
import 'dart:convert';
import 'package:movie_app/core/view_model/cubit/movie_states.dart';
import 'package:movie_app/features/movies/screens/movie_screen.dart';
import 'package:movie_app/features/tv/screens/tv_series_screen.dart';

class MovieCubit extends Cubit<MovieStates> {
  MovieCubit() : super(MovieInitialState());
  List<MovieModel> model = [];
  //get popular movies function
  List<MovieModel> movies = [];
  void getPopularMovies() async {
    emit(PopularMoviesLoadingState());
    http.Response response = await http.get(Uri.parse(ApiHelper.popularApi));
    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          movies.add(MovieModel.fromJson(data: item));
        }
        emit(PopularMoviesSuccessState());
        log("popular movies success${movies.length}");
      } else {
        emit(PopularMoviesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());
    }
  }

  //get top rated movies function
  List<MovieModel> topRatedMovies = [];
  void getTopRatedMovies() async {
    emit(TopRatedMoviesLoadingState());
    http.Response response = await http.get(Uri.parse(ApiHelper.topRatedApi));
    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          topRatedMovies.add(MovieModel.fromJson(data: item));
        }
        emit(TopRatedMoviesSuccessState());
        log("top rated topRatedMovies success${topRatedMovies.length}");
      } else {
        emit(TopRatedMoviesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());
    }
  }

  //get upcoming movies function
  List<MovieModel> upcomingMovies = [];
  void getUpcomingMovies() async {
    emit(UpcomingMoviesLoadingState());
    http.Response response = await http.get(Uri.parse(ApiHelper.upcomingApi));
    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          upcomingMovies.add(MovieModel.fromJson(data: item));
        }
        emit(UpcomingMoviesSuccessState());
        log("upcoming movies success${upcomingMovies.length}");
      } else {
        emit(UpcomingMoviesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());
    }
  }

  //get now playing movies function
  List<MovieModel> nowPlayingMovies = [];
  void getNowPlayingMovies() async {
    emit(NowPlayingMoviesLoadingState());
    http.Response response = await http.get(Uri.parse(ApiHelper.nowPlayingApi));
    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          nowPlayingMovies.add(MovieModel.fromJson(data: item));
        }
        emit(NowPlayingMoviesSuccessState());
        log("now playing movies success${nowPlayingMovies.length}");
      } else {
        emit(NowPlayingMoviesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());
    }
  }
  
  //get trending movies function
  List<MovieModel> trendingMovies = [];
  void getTrendingMovies() async {
    emit(TrendMoviesLoadingState());
    http.Response response = await http.get(Uri.parse(ApiHelper.trendingApi));
    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          trendingMovies.add(MovieModel.fromJson(data: item));
        }
        emit(TrendMoviesSuccessState());
        log("trending movies success${trendingMovies.length}");
      } else {
        emit(TrendMoviesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());
    }
  }
  
  //changeBottomNav function
 int bottomNavIndex = 0;
  List<Widget> screens = const [
    MovieScreen(),
    TvSeriesScreen(),
  ];
  void changeBottomNav({required int index}) {
    bottomNavIndex = index;
    emit(ChangeBottomNavState());
  }

  List<MovieModel> tvSeries = [];
  //on the air tv series function
  List<MovieModel> onTheAirTvSeries = [];
  void getOnTheAirTvSeries() async{
    emit(OnTheAirTvSeriesLoadingState());
    http.Response response = await  http.get(Uri.parse(ApiHelper.onAirApi));

    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          onTheAirTvSeries.add(MovieModel.fromJson(data: item));
        }
        emit(OnTheAirTvSeriesSuccessState());
        log("on the air tv series success${onTheAirTvSeries.length}");
      } else {
        emit(OnTheAirTvSeriesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());
    }   
  }

  //popular tv series function
  List<MovieModel> popularTvSeries = [];
  void getPopularTvSeries() async{
    emit(PopularTvSeriesLoadingState());
    http.Response response = await  http.get(Uri.parse(ApiHelper.popularTvApi));

    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          popularTvSeries.add(MovieModel.fromJson(data: item));
        }
        emit(PopularTvSeriesSuccessState());
        log("popular tv series success${popularTvSeries.length}");
      } else {
        emit(PopularTvSeriesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());    
    }
}

//top rated tv series function
  List<MovieModel> topRatedTvSeries = [];
  void getTopRatedTvSeries() async{
    emit(TopRatedTvSeriesLoadingState());
    http.Response response = await  http.get(Uri.parse(ApiHelper.topRatedTvApi));

    try { 
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          topRatedTvSeries.add(MovieModel.fromJson(data: item));
        }
        emit(TopRatedTvSeriesSuccessState());
        log("top rated tv series success${topRatedTvSeries.length}");
      } else {
        emit(TopRatedTvSeriesErrorState());
        log("an error occurred");
      }
    } catch (e) {
      log(e.toString());    
    }   
  }
}