import 'package:flutter/material.dart';
import 'package:store/screens/add_product_screen.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/product_details_screen.dart';
import 'package:store/screens/update_product_screen.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.normal,
            ),
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
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
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Colors.red.shade700),
          ),
          hintStyle: TextStyle(color: Colors.grey),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.deepPurple,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.deepPurple),
        ),
      ),
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ProductDetailsScreen.id: (context) => ProductDetailsScreen(),
        UpdateProductScreen.id: (context) => UpdateProductScreen(),
        AddProductScreen.id: (context) => AddProductScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
