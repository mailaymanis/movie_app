import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/view_model/cubit/movie_cubit.dart';
import 'package:movie_app/core/view_model/cubit/movie_states.dart';
import 'package:movie_app/core/widgets/custom_now_playing_movies.dart';
import 'package:movie_app/core/widgets/custom_top_rated_movies.dart';
import 'package:movie_app/core/widgets/custom_upcoming_movies.dart';
import 'package:movie_app/core/widgets/movie_item.dart';


class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieStates>(
      builder: (context, state) {
        final cubit = BlocProvider.of<MovieCubit>(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "FlutFlix",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: Colors.red),
            ),
          ),
          body:
              cubit.movies.isEmpty && cubit.topRatedMovies.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : SafeArea(
                    child: CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          sliver: SliverToBoxAdapter(
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              height: 300,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: cubit.movies.length,
                                itemBuilder: (context, index) {
                                  return MovieItem(
                                    cubit: cubit,
                                    model: cubit.movies[index],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          sliver: SliverToBoxAdapter(
                            child: Text(
                              "Top Rated Movies",
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          sliver: SliverToBoxAdapter(
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              height: 300,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                separatorBuilder:
                                    (context, index) =>
                                        const SizedBox(width: 30),
                                itemCount: cubit.topRatedMovies.length,
                                itemBuilder: (context, index) {
                                  return CustomTopRatedMovies(
                                    cubit: cubit,
                                    model: cubit.topRatedMovies[index],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          sliver: SliverToBoxAdapter(
                            child: Text(
                              "Upcoming Movies",
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          sliver: SliverToBoxAdapter(
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              height: 300,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                separatorBuilder:
                                    (context, index) =>
                                        const SizedBox(width: 30),
                                itemCount: cubit.upcomingMovies.length,
                                itemBuilder: (context, index) {
                                  return CustomUpcomingMovies(
                                    cubit: cubit,
                                    model: cubit.upcomingMovies[index],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          sliver: SliverToBoxAdapter(
                            child: Text(
                              "Now Playing Movies",
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          sliver: SliverToBoxAdapter(
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              height: 300,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                separatorBuilder:
                                    (context, index) =>
                                        const SizedBox(width: 30),
                                itemCount: cubit.nowPlayingMovies.length,
                                itemBuilder: (context, index) {
                                  return CustomNowPlayingMovies(
                                    cubit:cubit,
                                    model:cubit.nowPlayingMovies[index],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
        );
      },
    );
  }
}
