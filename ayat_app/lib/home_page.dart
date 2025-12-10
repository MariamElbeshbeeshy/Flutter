import 'package:ayat_app/widgets/verse_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List<String> sounds = [
    'verse 1.mp3',
    'verse 2.mp3',
    'verse 3.mp3',
    'verse 4.mp3',
    'verse 5.mp3',
    'verse 6.mp3',
    'verse 7.mp3',
    'verse 8.mp3',
    'verse 9.mp3',
    'verse 10.mp3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ayat App',
          style: TextStyle(color: const Color.fromARGB(255, 123, 238, 127)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 11, 53, 22),
        elevation: 10,
        shadowColor: const Color.fromARGB(150, 11, 53, 22),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var sound in sounds)
            VerseContainer(
              brigtness: sounds.indexOf(sound) % 2 == 0,
              sound: sound,
            ),
        ],
      ),
    );
  }
}
