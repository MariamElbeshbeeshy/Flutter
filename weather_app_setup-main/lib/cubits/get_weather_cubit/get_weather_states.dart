import 'package:weather_app/model/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherInfoSucess extends WeatherState {
  final WeatherModel currentWether;

  WeatherInfoSucess({required this.currentWether});
}

class WearherInfoFailure extends WeatherState {}
