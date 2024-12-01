import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:movie/models/movie_comming_soon_model.dart';
import 'package:movie/models/movie_now_playing_model.dart';
import 'package:movie/models/movie_popular_model.dart';
import 'package:movie/models/result_model.dart';

class APIService {
  static const String baseURL = "https://movies-api.nomadcoders.workers.dev";

  static const String popular = "popular";
  static const String nowPlaying = "now-playing";
  static const String comingSoon = "coming-soon";

  static Future<List<ResultModel>> getPopularMovie() async {
    final url = Uri.parse("$baseURL/$popular");
    final response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      final movies = jsonDecode(response.body);
      final movie = MoviePopularModel.formJson(movies);

      return movie.results;
    }
    throw Error();
  }

  static Future<List<ResultModel>> getNowPlayingMovie() async {
    final url = Uri.parse("$baseURL/$nowPlaying");
    final response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      final movies = jsonDecode(response.body);
      final movie = MovieNowPlayingModel.formJson(movies);

      return movie.results;
    }
    throw Error();
  }

  static Future<List<ResultModel>> getComingSoonMovie() async {
    final url = Uri.parse("$baseURL/$comingSoon");
    final response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      final movies = jsonDecode(response.body);
      final movie = MovieComingSoonModel.formJson(movies);

      return movie.results;
    }
    throw Error();
  }
}
