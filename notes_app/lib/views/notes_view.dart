import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';
import 'package:notes_app/widgets/notes_card.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes'), actions: [CustomSearchIcon()]),
      body: NotesCard(),
    );
  }
}
