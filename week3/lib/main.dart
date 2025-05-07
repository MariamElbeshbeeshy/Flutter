import 'package:flutter/material.dart';
import "homepage.dart";

void main() {
  runApp(const MainApp());
}

bool DarkMode = false;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DarkMode
          ? ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Color.fromARGB(255, 1, 28, 64),
                secondary: Colors.amber,
                surface: Color.fromARGB(255, 1, 28, 64),
              ),
              textTheme: TextTheme(
                titleLarge: TextStyle(
                  color: Color(int.parse('3899CF', radix: 16)).withOpacity(1.0),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "OpenSans",
                ),
                headlineMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: "OpenSans",
                ),
                displayMedium: TextStyle(
                  color: Color(int.parse('BBBBBB', radix: 16)).withOpacity(1.0),
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                  fontFamily: "OpenSans",
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    backgroundColor: Color.fromARGB(255, 1, 28, 64),
                    foregroundColor:
                        Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    minimumSize: Size(450, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(
                  color: Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
                ),
                titleTextStyle: TextStyle(
                  color: Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "OpenSans",
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('BBBBBB', radix: 16))
                          .withOpacity(1.0),
                    )),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('DDDDDD', radix: 16))
                          .withOpacity(1.0),
                    )),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('D44848', radix: 16))
                          .withOpacity(1.0),
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('1F81B9', radix: 16))
                          .withOpacity(1.0),
                    )),
                contentPadding: EdgeInsets.all(10),
                hintStyle: TextStyle(
                  color: Color(int.parse('BBBBBB', radix: 16)).withOpacity(1.0),
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  fontFamily: "OpenSans",
                ),
              ),
              /*checkboxTheme: CheckboxThemeData(
                checkColor: Colors.white,
              )*/
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                foregroundColor:
                    Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
              ))
          : ThemeData.light().copyWith(
              //primarySwatch: Colors.blue,
              colorScheme: ColorScheme.light(
                primary: Color(int.parse('3899CF', radix: 16)).withOpacity(1.0),
                secondary: Colors.amber,
                surface: Colors.white,
              ),
              //scaffoldBackgroundColor: Colors.white,
              textTheme: TextTheme(
                titleLarge: TextStyle(
                  color: Color(int.parse('3899CF', radix: 16)).withOpacity(1.0),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "OpenSans",
                ),
                headlineMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: "OpenSans",
                ),
                displayMedium: TextStyle(
                  color: Color(int.parse('BBBBBB', radix: 16)).withOpacity(1.0),
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                  fontFamily: "OpenSans",
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    backgroundColor:
                        Color(int.parse('3899CF', radix: 16)).withOpacity(1.0),
                    foregroundColor: Colors.white,
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    minimumSize: Size(450, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(
                  color: Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
                ),
                titleTextStyle: TextStyle(
                  color: Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "OpenSans",
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('BBBBBB', radix: 16))
                          .withOpacity(1.0),
                    )),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('DDDDDD', radix: 16))
                          .withOpacity(1.0),
                    )),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('D44848', radix: 16))
                          .withOpacity(1.0),
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color(int.parse('1F81B9', radix: 16))
                          .withOpacity(1.0),
                    )),
                contentPadding: EdgeInsets.all(10),
                hintStyle: TextStyle(
                  color: Color(int.parse('BBBBBB', radix: 16)).withOpacity(1.0),
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  fontFamily: "OpenSans",
                ),
              ),
              checkboxTheme: CheckboxThemeData(//checkColor: ,
                  )),
      home: Homepage(),
    );
  }
}
