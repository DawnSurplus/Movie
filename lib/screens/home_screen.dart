// ignore_for_file: non_constant_identifier_names, camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie/models/result_model.dart';
import 'package:movie/services/api_service.dart';
import 'package:movie/widgets/poster_card_list.dart';
import 'package:movie/widgets/title_text.dart';

enum ENUM_MOVIE_CATEGORY { POPULAR, NOW_CINEMA, UPCOMING }

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<ResultModel>> popularMovies = APIService.getPopularMovie();
  Future<List<ResultModel>> nowPlayingMovies = APIService.getNowPlayingMovie();
  Future<List<ResultModel>> upcomingMovies = APIService.getComingSoonMovie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(title: "Popular Movies"),
              PosterCardList(
                movies: popularMovies,
                option: ENUM_MOVIE_CATEGORY.POPULAR,
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleText(title: "Now in Cinemas"),
              PosterCardList(
                movies: nowPlayingMovies,
                option: ENUM_MOVIE_CATEGORY.NOW_CINEMA,
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleText(title: "Coming Soon"),
              PosterCardList(
                movies: upcomingMovies,
                option: ENUM_MOVIE_CATEGORY.UPCOMING,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
