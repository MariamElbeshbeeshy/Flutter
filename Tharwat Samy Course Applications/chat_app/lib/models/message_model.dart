import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String? content;
  final Timestamp? createdAt;
  final String? senderId;

  MessageModel(this.content, this.createdAt, this.senderId);

  factory MessageModel.fromJson(jsonData) {
    return MessageModel(
      jsonData['content'],
      jsonData['createdAt'],
      jsonData['senderId'],
    );
  }
}
