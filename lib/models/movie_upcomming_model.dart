// ignore_for_file: non_constant_identifier_names

import 'package:movie/models/date_model.dart';
import 'package:movie/models/result_model.dart';

class UpcomingModel {
  final DateModel dates;
  final num page, total_pages, total_results;
  final List<ResultModel> results;

  UpcomingModel.fromJson(Map<String, dynamic> json)
      : dates = DateModel.fromJson(json['dates']),
        page = json['page'],
        results = (json['results'] as List)
            .map((item) => ResultModel.fromJson(item))
            .toList(),
        total_pages = json['total_pages'],
        total_results = json['total_results'];
}
