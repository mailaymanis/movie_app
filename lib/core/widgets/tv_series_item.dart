import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/constants.dart';
import 'package:movie_app/core/models/movie_model.dart';
import 'package:movie_app/core/view_model/cubit/movie_cubit.dart';
import 'package:movie_app/features/detailes/screens/tv_series_detailed_screen.dart';

class TvSeriesItem extends StatelessWidget {
  const TvSeriesItem({super.key, required this.cubit, required this.model });
  final MovieCubit cubit;
  final MovieModel model;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 300,
        maxWidth: MediaQuery.sizeOf(context).width,
      ),
      child: CarouselView(
        onTap: (int index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => TvSeriesDetailedScreen(
                    tvSeries: model,
                  ),
            ),
          );
        },
        enableSplash: true,
        scrollDirection: Axis.horizontal,
        backgroundColor: Colors.amber,
        shrinkExtent: 250,
        itemExtent: 400,
        children: [
          Image.network(
            "${AppConstants.imageUrl}"
            "${model.posterPath}",
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
        ],
      ),
    );
  }
}
