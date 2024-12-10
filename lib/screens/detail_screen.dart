// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie/models/detail_model.dart';
import 'package:movie/services/api_service.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.movieId});
  final int movieId;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  static String TMDB_IMAGE_URL = "https://image.tmdb.org/t/p/w500";

  late DetailModel detailMovie;
  bool isLoading = true;

  void waitForDetailModel() async {
    detailMovie = await APIService.getDetailMovie(id: widget.movieId);

    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForDetailModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white), // 원하는 아이콘 설정
          onPressed: () {
            Navigator.pop(context); // 이전 화면으로 이동
          },),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: const Text(
          "Back to list",
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    "$TMDB_IMAGE_URL/${detailMovie.poster_path}",
                    scale: 0.7,
                    fit: BoxFit.none,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 150, left: 20, bottom: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(detailMovie.title,
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = detailMovie.vote_average.floor();
                              i >= 2;
                              i -= 2)
                            const Icon(Icons.star_outlined,
                                color: Colors.white),
                          if (detailMovie.vote_average % 1 > 0)
                            const Icon(Icons.star_half_rounded,
                                color: Colors.white),
                          for (int i = (10 - detailMovie.vote_average).floor();
                              i >= 2;
                              i -= 2)
                            const Icon(Icons.star_outline_rounded,
                                color: Colors.white),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("${detailMovie.vote_average}",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          for (var genre in detailMovie.genres)
                            Text("${genre.name} / ",
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("Storyline",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      Text(detailMovie.overview,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
