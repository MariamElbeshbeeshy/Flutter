import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      height: 150,
      width: double.infinity,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 223, 152),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Note Title",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  color: Colors.black87,
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 350,
                child: Text(
                  'This is a note card. You can add your notes here.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(221, 84, 83, 83),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '10 Dec 2025',
                style: TextStyle(
                  fontSize: 12.0,
                  color: const Color.fromARGB(221, 84, 83, 83),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
