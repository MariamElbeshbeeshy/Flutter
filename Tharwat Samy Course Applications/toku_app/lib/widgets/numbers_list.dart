import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/numbers_model.dart';

class NumbersListTile extends StatelessWidget {
  NumbersListTile({super.key});
  final List<NumbersModel> numbersList = [
    NumbersModel(
      NumberEnglish: 'one',
      NumberJapanese: 'ichi',
      Image: 'assets/images/numbers/number_one.png',
      Sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'two',
      NumberJapanese: 'ni',
      Image: 'assets/images/numbers/number_two.png',
      Sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'three',
      NumberJapanese: 'san',
      Image: 'assets/images/numbers/number_three.png',
      Sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'four',
      NumberJapanese: 'shi',
      Image: 'assets/images/numbers/number_four.png',
      Sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'five',
      NumberJapanese: 'go',
      Image: 'assets/images/numbers/number_five.png',
      Sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'six',
      NumberJapanese: 'roku',
      Image: 'assets/images/numbers/number_six.png',
      Sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'seven',
      NumberJapanese: 'nana',
      Image: 'assets/images/numbers/number_seven.png',
      Sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'eight',
      NumberJapanese: 'hachi',
      Image: 'assets/images/numbers/number_eight.png',
      Sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'nine',
      NumberJapanese: 'kyu',
      Image: 'assets/images/numbers/number_nine.png',
      Sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    NumbersModel(
      NumberEnglish: 'ten',
      NumberJapanese: 'ju',
      Image: 'assets/images/numbers/number_ten.png',
      Sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, i) => ListTile(
          leading: Image.asset(numbersList[i].Image),
          title: Text(
            numbersList[i].NumberEnglish,
            style: TextStyle(
              fontSize: 20,
              color: (i % 2 == 0) ? Colors.white : Color(0xff4F4F4F),
            ),
          ),
          subtitle: Text(
            numbersList[i].NumberJapanese,
            style: TextStyle(
              fontSize: 20,
              color: (i % 2 == 0) ? Colors.white : Color(0xff4F4F4F),
            ),
          ),
          trailing: IconButton(
            onPressed: () async {
              await player.play(AssetSource(numbersList[i].Sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: (i % 2 == 0) ? Color(0xfffbf7d2) : Color(0xff9747FF),
            ),
          ),
          tileColor: (i % 2 == 0) ? Color(0xff9747FF) : Color(0xfffbf7d2),
        ),
      ),
    );
  }
}
