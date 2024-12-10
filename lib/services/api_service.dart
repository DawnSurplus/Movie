// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:movie/models/detail_model.dart';
import 'package:movie/models/movie_upcomming_model.dart';
import 'package:movie/models/movie_now_playing_model.dart';
import 'package:movie/models/movie_popular_model.dart';
import 'package:movie/models/result_model.dart';

class APIService {
  static const String TMDB_API_KEY = "60ba55b9344f5bb2a8a966a57c200b5b";
  static const String TMDB_READ_ACCESS_TOKEN =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MGJhNTViOTM0NGY1YmIyYThhOTY2YTU3YzIwMGI1YiIsIm5iZiI6MTczMzY3Njc0NS40MDcsInN1YiI6IjY3NTVjZWM5NmYzN2Y2ZTg5YWRjNWUzNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.2_8Mnk-0ohnchne58joxjHQt5SrBZPNj6OGhNvecSzE";

  static const String TMDB_BASE_URL = "https://api.themoviedb.org/3/movie";
  static const String LANGUAGE_QUERY = "language=ko-KO";

  static const Map<String, String> TMDB_HEADER = {
    "accept": "application/json",
    "Authorization": "Bearer $TMDB_READ_ACCESS_TOKEN"
  };

  static Future<List<ResultModel>> getPopularMovie() async {
    final url = Uri.parse("$TMDB_BASE_URL/popular?$LANGUAGE_QUERY");
    final response = await http.get(url, headers: TMDB_HEADER);

    if (response.statusCode == HttpStatus.ok) {
      final movies = jsonDecode(response.body);
      final movie = PopularModel.fromJson(movies);

      return movie.results;
    }
    throw Error();
  }

  static Future<List<ResultModel>> getNowPlayingMovie() async {
    final url = Uri.parse("$TMDB_BASE_URL/now_playing?$LANGUAGE_QUERY");
    final response = await http.get(url, headers: TMDB_HEADER);

    if (response.statusCode == HttpStatus.ok) {
      final movies = jsonDecode(response.body);
      final movie = NowPlayingModel.fromJson(movies);

      return movie.results;
    }
    throw Error();
  }

  static Future<List<ResultModel>> getComingSoonMovie() async {
    final url = Uri.parse("$TMDB_BASE_URL/upcoming?$LANGUAGE_QUERY");
    final response = await http.get(url, headers: TMDB_HEADER);

    if (response.statusCode == HttpStatus.ok) {
      final movies = jsonDecode(response.body);
      final movie = UpcomingModel.fromJson(movies);

      return movie.results;
    }
    throw Error();
  }

  static Future<DetailModel> getDetailMovie({required int id}) async {
    final url = Uri.parse("$TMDB_BASE_URL/$id?$LANGUAGE_QUERY");
    final response = await http.get(url, headers: TMDB_HEADER);

    if (response.statusCode == HttpStatus.ok) {
      final movies = jsonDecode(response.body);
      final movie = DetailModel.fromJson(movies);

      return movie;
    }
    throw Error();
  }
}
