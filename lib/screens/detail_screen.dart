// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie/models/result_model.dart';

class DetailScreen extends StatelessWidget {
  static String TMDB_IMAGE_URL = "https://image.tmdb.org/t/p/w500";

  final ResultModel movie;

  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: const Text(
          "Back to list",
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "$TMDB_IMAGE_URL/${movie.poster_path}",
              scale: 0.7,
              fit: BoxFit.none,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 200, left: 20, bottom: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = movie.vote_average.floor(); i >= 2; i -= 2)
                      const Icon(Icons.star_outlined, color: Colors.white),
                    if (movie.vote_average % 1 > 0)
                      const Icon(Icons.star_half_rounded,
                          color: Colors.white),
                    for (int i = (10 - movie.vote_average).floor(); i >= 2; i -= 2)
                      const Icon(Icons.star_outline_rounded,
                          color: Colors.white),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("${movie.vote_average}",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Science Fiction, Action, Adventure",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                const SizedBox(
                  height: 30,
                ),
                const Text("Storyline",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Text(movie.overview,
                    style:
                        const TextStyle(fontSize: 15, color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
