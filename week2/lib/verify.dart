import 'package:flutter/material.dart';
import 'signupPage2.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Center(
          child: const Text(
            "Verify Identity",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Column(children: [
                const Text(
                  "Enter the 4 -digit code sent to your phone number.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 118, 122, 126)),
                ),
              ]),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onTap: () {
                      setState(() {
                        tapped = true;
                      });
                    },
                    //maxLength: 1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(148, 245, 245, 245),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(0, 123, 255, 1),
                      )),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: tapped
                              ? Color.fromRGBO(0, 123, 255, 1)
                              : const Color.fromARGB(148, 245, 245, 245),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    //maxLength: 1,
                    onTap: () {
                      setState(() {
                        tapped = true;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(148, 245, 245, 245),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(0, 123, 255, 1),
                      )),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: tapped
                              ? Color.fromRGBO(0, 123, 255, 1)
                              : const Color.fromARGB(148, 245, 245, 245),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    //maxLength: 1,
                    onTap: () {
                      setState(() {
                        tapped = true;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(148, 245, 245, 245),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(0, 123, 255, 1),
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: tapped
                            ? Color.fromRGBO(0, 123, 255, 1)
                            : const Color.fromARGB(148, 245, 245, 245),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onTap: () {
                      setState(() {
                        tapped = true;
                      });
                    },
                    //maxLength: 1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(148, 245, 245, 245),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(0, 123, 255, 1),
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: tapped
                            ? Color.fromRGBO(0, 123, 255, 1)
                            : const Color.fromARGB(148, 245, 245, 245),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Didn’t receive the code? ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(118, 122, 126, 1)),
              ),
              Text(
                "Resend",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 123, 255, 1)),
              ),
            ]),
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
                    MaterialPageRoute(builder: (context) => Signuppage2()),
                  );
                },
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: tapped
                        ? Color.fromARGB(255, 0, 120, 249)
                        : Color.fromRGBO(204, 204, 204, 1)),
                child: const Text(
                  "Verify",
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
