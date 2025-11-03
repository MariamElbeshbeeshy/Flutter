import 'package:chat_app/helper/constants.dart';
import 'package:flutter/material.dart';

class SentChatBubble extends StatelessWidget {
  final String data;
  const SentChatBubble({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        child: Text(data, style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
