import 'package:chat_app/helper/constants.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image.asset(Logo, height: 40),
            SizedBox(width: 10),
            Text('Scholar Chat'),
          ],
        )
      ),
    );
  }
}