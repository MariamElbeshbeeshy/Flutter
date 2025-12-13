import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'edit_note_view'),
      child: Container(
        padding: const EdgeInsets.fromLTRB(26, 20.0, 5, 20.0),
        margin: EdgeInsets.fromLTRB(16.0, 16, 16, 0),
        width: double.infinity,

        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 223, 152),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Note Title",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'This is a note card. You can add your notes here.',
                  maxLines: 3,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(221, 84, 83, 83),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black87,
                iconSize: 32.0,
                padding: EdgeInsets.zero,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '10 Dec 2025',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: const Color.fromARGB(221, 84, 83, 83),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
