class ResultModel {
  final adult;
  final backdrop_path;
  final id;
  final original_language;
  final original_title;
  final overview;
  final popularity;
  final poster_path;
  final release_date;
  final title;
  final video;
  final vote_average;
  final vote_count;

  ResultModel.fromJson(Map<String, dynamic> json)
  : adult = json['adult'],
    backdrop_path = json['backdrop_path'],
    id = json['id'],
    original_language = json['original_language'],
    original_title = json['original_title'],
    overview = json['overview'],
    popularity = json['popularity'],
    poster_path = json['poster_path'],
    release_date = json['release_date'],
    title = json['title'],
    video = json['video'],
    vote_average = json['vote_average'],
    vote_count = json['vote_count'];
}