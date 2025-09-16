import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 56, 2, 79),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images.jfif"),
                    radius: 78,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Mariam Elbeshbeeshy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Limelight",
                  ),
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    //fontFamily:
                  ),
                ),
                const Divider(color: const Color.fromARGB(178, 255, 255, 255)),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 3, 0, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const ListTile(
                    leading: Icon(Icons.phone),
                    iconColor: Color.fromARGB(255, 56, 2, 79),
                    title: Text("+20106859410"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const ListTile(
                    leading: Icon(Icons.email),
                    iconColor: Color.fromARGB(255, 56, 2, 79),
                    title: Text("mariomaelsaeed2@gmail.com"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
