import 'package:flutter/material.dart';
import 'package:movie_app/root_app.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return rootApp();
  }

}
