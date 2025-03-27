import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/view_model/cubit/movie_cubit.dart';
import 'package:movie_app/features/layout/screens/layout_screen.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
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
}
