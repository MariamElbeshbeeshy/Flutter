import 'package:flutter/material.dart';
import 'package:toku_app/Models/category_model.dart';
import 'package:toku_app/widgets/category_list.dart';

class PhrasesView extends StatelessWidget {
  PhrasesView({super.key});

  final List<CategoryModel> phrasesList = [
    CategoryModel(
      wordInEnglish: 'are you coming?',
      wordInJapanese: 'Kimasu ka?',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    CategoryModel(
      wordInEnglish: 'don\'t forget to subscribe',
      wordInJapanese: 'Kōdoku o wasurenaide',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    CategoryModel(
      wordInEnglish: 'how are you feeling?',
      wordInJapanese: 'Kibun wa dō desu ka?',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    CategoryModel(
      wordInEnglish: 'i love anime',
      wordInJapanese: 'Anime ga daisuki desu',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    CategoryModel(
      wordInEnglish: 'i love programming',
      wordInJapanese: 'Puroguramingu ga daisuki',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    CategoryModel(
      wordInEnglish: 'programming is easy',
      wordInJapanese: 'Puroguramingu wa kantan',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    CategoryModel(
      wordInEnglish: 'what is your name?',
      wordInJapanese: 'Onamae wa nan desu ka?',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    CategoryModel(
      wordInEnglish: 'where are you going?',
      wordInJapanese: 'Doko ni ikimasu ka?',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    CategoryModel(
      wordInEnglish: 'yes i\'m coming',
      wordInJapanese: 'Hai, ikimasu',
      image: 'assets/images/phrases/training_phrase.png', // Updated
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phrases')),
      body: CategoryListTile(categoryList: phrasesList),
    );
  }
}
