import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/constants.dart';
import 'package:movie_app/core/models/tv_series_model.dart';
import 'package:movie_app/core/view_model/cubit/tv_series_cubit.dart';
import 'package:movie_app/features/detailes/screens/tv_series_detailed_screen.dart';

class CustomTopRatedTvSeries extends StatelessWidget {
  const CustomTopRatedTvSeries({super.key , required this.cubit , required this.model});
  final TvSeriesCubit cubit;
  final TvSeriesModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
       Navigator.push(context, MaterialPageRoute(builder: (context) => TvSeriesDetailedScreen(tvSeries: model,),));
      },
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
              "${AppConstants.imageUrl}"
              "${model.posterPath}",
            ),
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
