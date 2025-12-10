import 'package:flutter/material.dart';
import 'package:toku_app/Models/category_model.dart';
import 'package:toku_app/widgets/category_list.dart';

class ColorsView extends StatelessWidget {
  ColorsView({super.key});

  final List<CategoryModel> colorsList = [
    CategoryModel(
      wordInEnglish: 'black',
      wordInJapanese: 'Burakku',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    CategoryModel(
      wordInEnglish: 'brown',
      wordInJapanese: 'chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    CategoryModel(
      wordInEnglish: 'dusty yellow',
      wordInJapanese: 'Dasutiierō',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    CategoryModel(
      wordInEnglish: 'gray',
      wordInJapanese: 'Gurē',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    CategoryModel(
      wordInEnglish: 'green',
      wordInJapanese: 'midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    CategoryModel(
      wordInEnglish: 'red',
      wordInJapanese: 'aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    CategoryModel(
      wordInEnglish: 'white',
      wordInJapanese: 'Shiroi',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    CategoryModel(
      wordInEnglish: 'yellow',
      wordInJapanese: 'kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colors')),
      body: CategoryListTile(categoryList: colorsList),
    );
  }
}
