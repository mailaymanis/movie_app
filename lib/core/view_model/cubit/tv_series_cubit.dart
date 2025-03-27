import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helper/api_helper.dart';
import 'package:movie_app/core/models/tv_series_model.dart';
import 'package:movie_app/core/view_model/cubit/tv_series_states.dart';
import 'package:http/http.dart' as http;

class TvSeriesCubit extends Cubit<TvSeriesStates> {
  TvSeriesCubit() : super(TvSeriesInitialState());

List<TvSeriesModel> tvSeries = [];
  //on the air tv series function
  List<TvSeriesModel> onTheAirTvSeries = [];
  void getOnTheAirTvSeries() async{
    emit(OnTheAirTvSeriesLoadingState());
    http.Response response = await  http.get(Uri.parse(ApiHelper.onAirApi));

    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          onTheAirTvSeries.add(TvSeriesModel.fromJson(data: item));
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
  List<TvSeriesModel> popularTvSeries = [];
  void getPopularTvSeries() async{
    emit(PopularTvSeriesLoadingState());
    http.Response response = await  http.get(Uri.parse(ApiHelper.popularTvApi));

    try {
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          popularTvSeries.add(TvSeriesModel.fromJson(data: item));
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
  List<TvSeriesModel> topRatedTvSeries = [];
  void getTopRatedTvSeries() async{
    emit(TopRatedTvSeriesLoadingState());
    http.Response response = await  http.get(Uri.parse(ApiHelper.topRatedTvApi));

    try { 
      if (response.statusCode == 200) {
        var jsonDecoded = jsonDecode(response.body);
        for (var item in jsonDecoded['results']) {
          topRatedTvSeries.add(TvSeriesModel.fromJson(data: item));
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