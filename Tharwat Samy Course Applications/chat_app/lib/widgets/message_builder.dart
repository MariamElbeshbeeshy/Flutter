import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/recieved_chat_bubble.dart';
import 'package:chat_app/widgets/sent_chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageBuilder extends StatefulWidget {
  String email;
   MessageBuilder({super.key, required this.email});

  @override
  State<MessageBuilder> createState() => _MessageBuilderState();
}

class _MessageBuilderState extends State<MessageBuilder> {
  ScrollController scrollController = ScrollController();

  int _prevMessageCount = 0;

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _scrollToEnd() {
    // Check if the controller is attached and we are near the bottom (0.0)
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  final Stream<QuerySnapshot> messagesStream = FirebaseFirestore.instance
      .collection('Messages')
      .orderBy('createdAt', descending: true)
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

          final messages = snapshot.data!.docs;
          List<MessageModel> messagesList = [];
          for (int i = 0; i < messages.length; i++) {
            messagesList.add(MessageModel.fromJson(messages[i]));
          }

          final currentMessageCount = messages.length;
          if (currentMessageCount > _prevMessageCount) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _scrollToEnd();
            });
          }

          _prevMessageCount = currentMessageCount;

          return ListView.builder(
            controller: scrollController,
            reverse: true,
            padding: EdgeInsets.only(
              top: 8,
              left: 12,
              right: 12,
              bottom: MediaQuery.of(context).viewInsets.bottom + 8,
            ),
            itemCount: messagesList.length,
            itemBuilder: (context, index) {
              final messageText = messagesList[index].content;
              final sentByCurrentUser =
                  messagesList[index].senderId == widget.email;
              return sentByCurrentUser
                  ? SentChatBubble(data: messageText ?? '')
                  : RecievedChatBubble(data: messageText ?? '');
            },
          );
          ;
        },
      ),
    );
  }
}
