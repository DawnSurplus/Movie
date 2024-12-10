class DateModel {
  final String maximum, minimum;

  DateModel.fromJson(Map<String, dynamic> json)
  : maximum = json['maximum'],
    minimum = json['minimum'];
}