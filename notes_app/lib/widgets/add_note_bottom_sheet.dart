import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 16.0),
      child: Container(
        height: 500,
        child: SingleChildScrollView(
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
              SizedBox(height: 16.0),

              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Add Note'),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
