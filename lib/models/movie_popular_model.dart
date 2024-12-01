import 'package:movie/models/result_model.dart';

class MoviePopularModel {
  final num page, totalPages, totalResults;
  final List<ResultModel> results;

  MoviePopularModel.formJson(Map<String, dynamic> json)
      : page = json["page"],
        results = (json['results'] as List)
            .map((item) => ResultModel.formJson(item))
            .toList(),
        totalPages = json['total_pages'],
        totalResults = json['total_results'];
}