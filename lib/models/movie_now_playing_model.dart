import 'package:movie/models/date_model.dart';
import 'package:movie/models/result_model.dart';

class MovieNowPlayingModel {
  final DateModel dates;
  final num page, totalPages, totalResults;
  final List<ResultModel> results;

  MovieNowPlayingModel.formJson(Map<String, dynamic> json)
      : dates = DateModel.formJson(json['dates']),
        page = json['page'],
        results = (json['results'] as List)
            .map((item) => ResultModel.formJson(item))
            .toList(),
        totalPages = json['total_pages'],
        totalResults = json['total_results'];
}