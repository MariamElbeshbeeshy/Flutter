import 'package:chat_app/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 8, 39, 62),
        scaffoldBackgroundColor: const Color.fromARGB(255, 8, 39, 62),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.normal,
            ),
            backgroundColor: Colors.white,
            foregroundColor: const Color.fromARGB(255, 8, 39, 62),
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide.none,
            ),
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Color.fromARGB(170, 255, 255, 255)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          hintStyle: TextStyle(color: Color.fromARGB(200, 255, 255, 255)),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white,
        ),
        textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.white)),
      ),
      home: SignInPage(),
    );
  }
}
