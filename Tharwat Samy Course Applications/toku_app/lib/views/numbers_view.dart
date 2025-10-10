import 'package:flutter/material.dart';
import 'package:toku_app/Models/category_model.dart';
import 'package:toku_app/widgets/category_list.dart';

class NumbersView extends StatelessWidget {
  NumbersView({super.key});
  final List<CategoryModel> numbersList = [
    CategoryModel(
      wordInEnglish: 'one',
      wordInJapanese: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'two',
      wordInJapanese: 'ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'three',
      wordInJapanese: 'san',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'four',
      wordInJapanese: 'shi',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'five',
      wordInJapanese: 'go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'six',
      wordInJapanese: 'roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'seven',
      wordInJapanese: 'nana',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'eight',
      wordInJapanese: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'nine',
      wordInJapanese: 'kyu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    CategoryModel(
      wordInEnglish: 'ten',
      wordInJapanese: 'Jū',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Numbers')),
      body: CategoryListTile(categoryList: numbersList),
    );
  }
}
