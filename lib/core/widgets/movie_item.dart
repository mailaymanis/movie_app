import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/constants.dart';
import 'package:movie_app/core/models/movie_model.dart';
import 'package:movie_app/core/view_model/cubit/movie_cubit.dart';
import 'package:movie_app/features/detailes/screens/movie_detailed_screen.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.cubit, required this.model});
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
                  (context) => MovieDetailedScreen(
                    movie: model,
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
