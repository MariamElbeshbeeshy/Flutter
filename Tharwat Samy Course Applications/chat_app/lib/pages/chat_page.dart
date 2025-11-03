import 'package:chat_app/helper/constants.dart';
import 'package:chat_app/widgets/message_text_field.dart';
import 'package:chat_app/widgets/message_builder.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});
  static String id = 'Chat-page';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  CollectionReference Messages = FirebaseFirestore.instance.collection(
    'Messages',
  );

  Stream<QuerySnapshot> MessagesStream = FirebaseFirestore.instance
      .collection('Messages')
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo, height: 40),
            SizedBox(width: 10),
            Text('Scholar Chat'),
          ],
        ),
      ),
      body: Column(children: [MessageBuilder(), MessageTextField()]),
    );
  }
}
