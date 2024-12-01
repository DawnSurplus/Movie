class DateModel {
  final String maximum, minimum;

  DateModel.formJson(Map<String, dynamic> json)
      : maximum = json['maximum'],
        minimum = json['minimum'];
}