class WeatherModel {
  String city_Name;
  String country;
  DateTime date;
  String? image;
  double avg_temp;
  double min_temp;
  double max_temp;
  String condition;
  String iconCode;

  WeatherModel(
      {required this.city_Name,
      required this.country,
      required this.date,
      required this.avg_temp,
      required this.min_temp,
      required this.max_temp,
      required this.condition,
      required this.iconCode});

  factory WeatherModel.fromjason(Map<String, dynamic> json) {
    return WeatherModel(
        city_Name: json['city_name'],
        country: json['country_code'],
        date: DateTime.parse(json['data'][0]['datetime']),
        avg_temp: json['data'][0]['temp'].toDouble(),
        min_temp: json['data'][0]['min_temp'].toDouble(),
        max_temp: json['data'][0]['max_temp'].toDouble(),
        condition: json['data'][0]['weather']['description'],
        iconCode: json['data'][0]['weather']['icon']);
  }
}
