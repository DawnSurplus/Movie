import 'package:movie/models/genre_model.dart';
import 'package:movie/models/result_model.dart';

class DetailModel extends ResultModel {
  final GenreModel genres;
  final runtime;

  DetailModel.fromJson(super.json)
      : genres = GenreModel.fromJson(json),
        runtime = json['runtime'],
        super.fromJson();
}