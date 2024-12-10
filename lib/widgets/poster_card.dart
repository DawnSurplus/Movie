// ignore_for_file: non_constant_identifier_names, camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie/models/result_model.dart';
import 'package:movie/screens/home_screen.dart';

class PosterCard extends StatelessWidget {
  static String TMDB_IMAGE_URL = "https://image.tmdb.org/t/p/w500";

  final ResultModel movie;
  final ENUM_MOVIE_CATEGORY option;
  late double? width, height;
  late bool showMovieName;

  PosterCard({
    super.key,
    required this.movie,
    required this.option,
  }) {
    switch (option) {
      case ENUM_MOVIE_CATEGORY.POPULAR:
        {
          width = 300;
          height = 225;
          showMovieName = false;
        }
        break;

      case ENUM_MOVIE_CATEGORY.NOW_CINEMA:
        {
          width = 140;
          height = 200;
          showMovieName = true;
        }
        break;

      case ENUM_MOVIE_CATEGORY.UPCOMING:
        {
          width = 140;
          height = 250;
          showMovieName = true;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height! - 50,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: const Offset(5, 5),
                    color: Colors.black.withOpacity(0.1),
                  )
                ]),
            child: Image.network(
              "$TMDB_IMAGE_URL/${movie.poster_path}",
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          if (showMovieName)
            Text(
              movie.title,
              softWrap: true,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
        ],
      ),
    );
  }
}
