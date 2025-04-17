import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import 'signupPage.dart';

class RolePage extends StatefulWidget {
  @override
  State<RolePage> createState() => _RolePage();
}

class _RolePage extends State<RolePage> {
  //LanguagePage({super.key});
  List<bool> Role = [false, false];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Center(
        child: const Text(
                    "Choose Your Role",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
      ),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Column(children: [
                
                Container(
                  alignment: Alignment.center,
                  width: 253,
                  height: 60,
                  child: const Text(
                    "Let us know how you'll be using the platform.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 118, 122, 126)),
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Role[0] = true;
                      Role[1] = false;
                    });
                  },
                  child: Container(
                    height: 180,
                    width: 167,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Role[0]
                            ? Color.fromARGB(255, 0, 123, 255)
                            : Color.fromARGB(10, 217, 217, 217),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(10, 217, 217, 217),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Designer.png",
                          width: 70,
                          height: 70,
                        ),
                        const SizedBox(),
                        const Text(
                          "Designer",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Role[1] = true;
                      Role[0] = false;
                    });
                  },
                  child: Container(
                    height: 180,
                    width: 167,
                    decoration: BoxDecoration(
                      //shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Role[1]
                            ? Color.fromARGB(255, 0, 123, 255)
                            : Color.fromARGB(10, 217, 217, 217),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(10, 217, 217, 217),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/image.png",
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Client",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 70,
              width: 380,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Role[0] || Role[1]
                        ? Color.fromARGB(255, 0, 120, 249)
                        : Color.fromARGB(204, 94, 92, 92)),
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
