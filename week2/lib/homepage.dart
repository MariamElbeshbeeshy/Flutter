import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import "languagepage.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LanguagePage()),
          );
        },
        child: Image.asset(
          "assets/images/catLogo.png",
          width: 285,
          height: 285,
        ),
      ))),
    );
  }
}
