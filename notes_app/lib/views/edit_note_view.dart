import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/widgets/custom_icon_button.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const String id = 'edit_note_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        actions: [CustomIconButton(icon: Icons.check, onPressed: () => Navigator.pop(context))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Note Title'),
              style: TextStyle(color: kPrimaryColor),
            ),
            SizedBox(height: 16.0),
            TextField(
              style: TextStyle(color: kPrimaryColor),
              decoration: InputDecoration(hintText: 'Content'),
              maxLines: 10,
            ),
          ],
        ),
      ),
    );
  }
}
