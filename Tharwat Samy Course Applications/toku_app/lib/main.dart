import 'package:flutter/material.dart';
import 'package:toku_app/views/home_view.dart';

void main() {
  
  
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toku App',
      theme: ThemeData(
        primaryColorLight: Color(0xffFFE17E),
        primaryColorDark: Color(0xff9747FF),
        scaffoldBackgroundColor: Color(0xfffbf7d2),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          backgroundColor: Color(0xfffbf7d2),
          elevation: 5,
          shadowColor: Color(0xff6b4226),
        ),
      ),
      home: const HomeView(),
    );
  }
}
