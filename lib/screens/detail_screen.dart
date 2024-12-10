import 'package:flutter/material.dart';
import 'package:movie/models/result_model.dart';

class DetailScreen extends StatelessWidget {
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
              "https://image.tmdb.org/t/p/w500/${movie.poster_path}",
              scale: 0.7,
              fit: BoxFit.none,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 250, left: 20, bottom: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                  Icon(Icons.star_outlined, color: Colors.white,),
                  Icon(Icons.star_outlined, color: Colors.white,),
                  Icon(Icons.star_outlined, color: Colors.white,),
                  Icon(Icons.star_half_rounded, color: Colors.white,),
                  Icon(Icons.star_outline_rounded, color: Colors.white,),
                ],),
                const SizedBox(height: 15,),
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
                    style: const TextStyle(fontSize: 15, color: Colors.white)),
                const SizedBox(
                  height: 50,
                ),
                const Text("Movie Genre"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
