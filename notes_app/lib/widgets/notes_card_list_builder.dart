import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_card.dart';

class NotesCardListBuilder extends StatelessWidget {
  const NotesCardListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NotesCard();
      },
    );
  }
}