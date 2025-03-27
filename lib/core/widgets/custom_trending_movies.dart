import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/constants.dart';
import 'package:movie_app/core/models/movie_model.dart';
import 'package:movie_app/core/view_model/cubit/movie_cubit.dart';
import 'package:movie_app/features/detailes/screens/movie_detailed_screen.dart';

class CustomTreendingMovies extends StatelessWidget {
  const CustomTreendingMovies({super.key , required this.cubit , required this.model});
  final MovieCubit cubit;
  final MovieModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
       Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailedScreen(movie: model,),));
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
