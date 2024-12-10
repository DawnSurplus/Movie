import 'package:movie/models/genre_model.dart';
import 'package:movie/models/result_model.dart';

class DetailModel extends ResultModel {
  final List<GenreModel> genres;
  final runtime;

  DetailModel.fromJson(super.json)
      : genres = (json['genres'] as List)
            .map((item) => GenreModel.fromJson(item))
            .toList(),
        runtime = json['runtime'],
        super.fromJson();
}