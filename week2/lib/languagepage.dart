import 'package:flutter/material.dart';
/*import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';*/
import "rolepage.dart";

class _LanguagePage extends State<LanguagePage> {
  //LanguagePage({super.key});
  List<bool> Button = [false, false];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Center(
              child: Text(
                "choose your language",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Center(
              child: Text(
                "choose your language",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    Button[0] = true;
                    Button[1] = false;
                  });
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  side: BorderSide(
                      color: Button[0]
                          ? const Color.fromARGB(255, 0, 120, 249)
                          : const Color.fromARGB(0, 0, 0, 0)),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                          "assets/images/openmoji_flag-united-states.png"),
                      padding: const EdgeInsets.all(10),
                    ),
                    const Text(
                      "English",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    Button[1] = true;
                    Button[0] = false;
                  });
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  side: BorderSide(
                      color: Button[1]
                          ? const Color.fromARGB(255, 0, 120, 249)
                          : const Color.fromARGB(0, 0, 0, 0)),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                          "assets/images/openmoji_flag-united-states.png"),
                      padding: const EdgeInsets.all(10),
                    ),
                    const Text(
                      "العربية",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "you can change it later from settings",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 70,
              width: 380,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RolePage()),
          );
                },
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Button[0] || Button[1]
                        ? const Color.fromARGB(255, 0, 120, 249)
                        : const Color.fromARGB(204, 94, 92, 92)),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePage();
}
