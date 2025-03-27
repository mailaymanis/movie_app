import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/constants.dart';
import 'package:movie_app/core/models/tv_series_model.dart';
import 'package:movie_app/core/widgets/custom_overview_widgets.dart';

class TvSeriesDetailedScreen extends StatelessWidget {
  const TvSeriesDetailedScreen({super.key, required this.tvSeries});
  final TvSeriesModel tvSeries;
  @override
  Widget build(BuildContext context) {
    //final cubit = BlocProvider.of<TvSeriesCubit>(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(top: 16, left: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            expandedHeight: 500,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.network(
                  "${AppConstants.imageUrl}${tvSeries.posterPath}",
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                spacing: 10,
                children: [
                  Text(
                    "Overview",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "${tvSeries.overview}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  custom_overview_widgets(context, tvSeries),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Trending Movies",
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: Colors.white),
              ),
            ),
          ),
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          //   sliver: SliverToBoxAdapter(
          //     child: SizedBox(
          //       width: MediaQuery.sizeOf(context).width,
          //       height: 300,
          //       child: ListView.separated(
          //         scrollDirection: Axis.horizontal,
          //         shrinkWrap: true,
          //         separatorBuilder:
          //             (context, index) => const SizedBox(width: 30),
          //         itemCount: cubit..length,
          //         itemBuilder: (context, index) {
          //           return CustomTreendingMovies(
          //             cubit: cubit,
          //             model: cubit.trendingMovies[index],
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
