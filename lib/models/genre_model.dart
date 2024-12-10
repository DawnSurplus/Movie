class GenreModel {
  final id;
  final name;

  GenreModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}