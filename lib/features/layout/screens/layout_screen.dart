import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/view_model/cubit/movie_cubit.dart';
import 'package:movie_app/core/view_model/cubit/movie_states.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<MovieCubit>(context);
    return BlocBuilder<MovieCubit, MovieStates>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: SalomonBottomBar(
              currentIndex: cubit.bottomNavIndex,
              onTap: (index) {
                cubit.changeBottomNav(index: index);
              },
              selectedItemColor: Colors.orangeAccent,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.black,
              items: [
                SalomonBottomBarItem(
                  icon: Icon(Icons.movie),
                  title: Text("Movie"),
                  selectedColor: Colors.purple,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.tv),
                  title: Text("TV Series"),
                  selectedColor: Colors.orange,
                ),
              ],
            ),
          ),
          body:cubit.screens[cubit.bottomNavIndex],
        );
      },
    );
  }
}
