import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kDarkBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: kDarkBackgroundColor,
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: NotesView())),
    );
  }
}
