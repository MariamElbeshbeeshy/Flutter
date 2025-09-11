import 'package:flutter/material.dart';
import 'package:news_app/Views/home_view.dart';

void main() {
  //debugPrint("App started");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Building MyApp");
    return MaterialApp(home: HomeView());
  }
}
