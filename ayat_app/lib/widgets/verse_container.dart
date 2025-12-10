import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class VerseContainer extends StatelessWidget {
  final String sound;
  final bool brigtness;
  VerseContainer({super.key, required this.sound, required this.brigtness});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: (brigtness == true)
              ? Color.fromARGB(255, 175, 255, 175)
              : const Color.fromARGB(255, 123, 238, 127),
        ),
        onTap: () async {
          await player.play(AssetSource(sound));
          player.dispose();
        },
      ),
    );
  }
}
