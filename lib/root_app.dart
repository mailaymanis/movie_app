import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/view_model/cubit/movie_cubit.dart';
import 'package:movie_app/features/layout/screens/layout_screen.dart';

BlocProvider<MovieCubit> rootApp() {
    return BlocProvider(
    create:
        (context) =>
            MovieCubit()
              ..getNowPlayingMovies()
              ..getPopularMovies()
              ..getTopRatedMovies()
              ..getUpcomingMovies()
              ..getTrendingMovies()
              ..getOnTheAirTvSeries()
              ..getPopularTvSeries()
              ..getTopRatedTvSeries(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const LayoutScreen(),
    ),
  );
  }