import 'package:chat_app/widgets/recieved_chat_bubble.dart';
import 'package:chat_app/widgets/sent_chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageBuilder extends StatelessWidget {
  MessageBuilder({super.key});

  final Stream<QuerySnapshot> messagesStream = FirebaseFirestore.instance
      .collection('Messages')
      .orderBy('timestamp', descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
        stream: messagesStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          final docs = snapshot.data!.docs;
          return ListView.builder(
            reverse: true,
            padding: EdgeInsets.only(
              top: 8,
              left: 12,
              right: 12,
              bottom: MediaQuery.of(context).viewInsets.bottom + 8,
            ),
            itemCount: docs.length,
            itemBuilder: (context, index) {
              final data = docs[index].data() as Map<String, dynamic>;
              final text = data['Text'] ?? '';
              final sentByCurrentUser = data['UserID'] == 'Sender';
              return sentByCurrentUser
                  ? SentChatBubble(data: text)
                  : RecievedChatBubble(data: text);
            },
          );
        },
      ),
    );
  }
}
