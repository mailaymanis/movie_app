import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/constants.dart';
import 'package:movie_app/core/models/movie_model.dart';
import 'package:movie_app/core/widgets/custom_overview_widgets.dart';

class MovieDetailedScreen extends StatelessWidget {
  const MovieDetailedScreen({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
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
                        "${AppConstants.imageUrl}${movie.posterPath}",
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      spacing: 10,
                      children: [
                        Text(
                          "Overview",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          "${movie.overview}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        custom_overview_widgets(context, movie),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}