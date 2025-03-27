import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/view_model/cubit/tv_series_cubit.dart';
import 'package:movie_app/core/view_model/cubit/tv_series_states.dart';
import 'package:movie_app/core/widgets/custom_popular_tv_series.dart';
import 'package:movie_app/core/widgets/custom_top_rated_tv_series.dart';
import 'package:movie_app/core/widgets/tv_series_item.dart';


class TvSeriesScreen extends StatelessWidget {
  const TvSeriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvSeriesCubit, TvSeriesStates>(
      builder: (context, state) {
        final cubit = BlocProvider.of<TvSeriesCubit>(context);
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
              cubit.onTheAirTvSeries.isEmpty && cubit.popularTvSeries.isEmpty
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
                                itemCount: cubit.onTheAirTvSeries.length,
                                itemBuilder: (context, index) {
                                  return TvSeriesItem(
                                    cubit: cubit, 
                                    model: cubit.onTheAirTvSeries[index],);
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
                              "Top Rated Tv Series",
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
                                itemCount: cubit.topRatedTvSeries.length,
                                itemBuilder: (context, index) {
                                  return CustomTopRatedTvSeries(
                                    cubit: cubit,
                                    model: cubit.topRatedTvSeries[index],
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
                              "Popular Tv Series",
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
                                itemCount: cubit.popularTvSeries.length,
                                itemBuilder: (context, index) {
                                  return CustomPopularTvSeries(
                                    cubit: cubit, 
                                    model: cubit.popularTvSeries[index],);
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
