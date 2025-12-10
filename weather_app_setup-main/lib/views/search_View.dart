import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search a city"),
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(10),
        child: TextField(
          onSubmitted: (input) async {
            log(input);
            BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: input);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            label: Text("City"),
            hintText: "Enter City Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
