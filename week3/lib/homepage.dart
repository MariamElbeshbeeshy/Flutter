import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:week3/form.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
        ),
        title: Text(
          "HomePage",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "OpenSans",
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/Images/Checklist.jpg"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormPage()));
              },
              child: Text(
                "Fill The form",
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Floating Button Pressed!'),
              duration: Duration(seconds: 2),
              action: SnackBarAction(
                label: 'hide',
                onPressed: () {},
              )));
        },
        child: Icon(Icons.info_outline),
      ),
    );
  }
}
