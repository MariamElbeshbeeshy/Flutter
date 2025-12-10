import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/theme_func.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: getWeatherThemeColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                              .currentWeather
                              ?.iconCode ??
                          'null'),
                ),
                appBarTheme: AppBarTheme(
                  elevation: 8,
                  shadowColor: Colors.black45,
                  centerTitle: true,
                  backgroundColor: getWeatherThemeColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                              .currentWeather
                              ?.iconCode ??
                          'null'),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          },
        ),
      ),
    );
  }
}
