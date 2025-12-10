import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/service/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? currentWeather;
  getWeather({required String cityName}) async {
    try {
      currentWeather = await WeatherService().getWeather(cityName: cityName);
      emit(WeatherInfoSucess(currentWether: currentWeather!));
    } catch (e) {
      emit(WearherInfoFailure());
    }
  }
}
