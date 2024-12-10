// ignore_for_file: non_constant_identifier_names

import 'package:movie/models/result_model.dart';

class PopularModel {
  final num page, total_pages, total_results;
  final List<ResultModel> results;

  PopularModel.fromJson(Map<String, dynamic> json)
      : page = json["page"],
        results = (json['results'] as List)
            .map((item) => ResultModel.fromJson(item))
            .toList(),
        total_pages = json['total_pages'],
        total_results = json['total_results'];
}