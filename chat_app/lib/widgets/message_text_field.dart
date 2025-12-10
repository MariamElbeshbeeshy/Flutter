import 'package:chat_app/helper/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

  
class MessageTextField extends StatefulWidget {
  final String email;
  MessageTextField({super.key, required this.email});

  @override
  State<MessageTextField> createState() => _MessageTextFieldState();
}



class _MessageTextFieldState extends State<MessageTextField> {
  final TextEditingController _controller = TextEditingController();
  CollectionReference Messages = FirebaseFirestore.instance.collection(
    'Messages',
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    Messages.add({
      'content': text,
      'senderId': widget.email,
      'createdAt': FieldValue.serverTimestamp(),
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ValueListenableBuilder<TextEditingValue>(
        valueListenable: _controller,
        builder: (context, value, _) {
          final hasText = value.text.trim().isNotEmpty;

          final iconColor = hasText ? kSecondaryColor : kPrimaryColor;
          return TextField(
            controller: _controller,
            onSubmitted: (value) => _sendMessage(),

            cursorColor: kSecondaryColor,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                color: iconColor,
                onPressed: _sendMessage,
              ),
              hintText: 'Type your message here...',
              hintStyle: TextStyle(color: kPrimaryColor),
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kSecondaryColor, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
