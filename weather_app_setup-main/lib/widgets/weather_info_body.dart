import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/theme_func.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeatherModel currentWeather =
        BlocProvider.of<GetWeatherCubit>(context).currentWeather!;
    return BlocBuilder<GetWeatherCubit, WeatherState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
              gradient: getWeatherGradient(currentWeather.iconCode)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentWeather.city_Name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Text(
                  'updated at ${currentWeather.date.day} - ${currentWeather.date.month}',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://cdn.weatherbit.io/static/img/icons/${currentWeather.iconCode}.png',
                    ),
                    Text(
                      '${currentWeather.avg_temp}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Maxtemp: ${currentWeather.max_temp.round()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Mintemp: ${currentWeather.min_temp.round()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  currentWeather.condition,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
