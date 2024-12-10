// ignore_for_file: non_constant_identifier_names, camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie/models/result_model.dart';
import 'package:movie/screens/detail_screen.dart';
import 'package:movie/screens/home_screen.dart';
import 'package:movie/widgets/poster_card.dart';

class PosterCardList extends StatelessWidget {
  final Future<List<ResultModel>> movies;
  final ENUM_MOVIE_CATEGORY option;
  late double? height;

  PosterCardList({
    super.key,
    required this.movies,
    required this.option,
  }) {
    switch (option) {
      case ENUM_MOVIE_CATEGORY.POPULAR:
      case ENUM_MOVIE_CATEGORY.NOW_CINEMA:
        {
          height = 225;
        }
        break;

      case ENUM_MOVIE_CATEGORY.UPCOMING:
        {
          height = 300;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: FutureBuilder(
        future: movies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 10),
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var movie = snapshot.data![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(movie: movie),
                            fullscreenDialog: true));
                  },
                  child: PosterCard(
                    movie: movie,
                    option: option,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
