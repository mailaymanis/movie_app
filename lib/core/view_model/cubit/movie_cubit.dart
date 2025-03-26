import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/core/helper/api_helper.dart';
import 'package:movie_app/core/models/movie_model.dart';
import 'dart:convert';
import 'package:movie_app/core/view_model/cubit/movie_states.dart';

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
}
