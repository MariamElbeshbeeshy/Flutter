import 'package:flutter/material.dart';

class Signuppage2 extends StatelessWidget {
  const Signuppage2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 135,
                      height: 47,
                      color: Color.fromRGBO(175, 175, 175, 1),
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "Logo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 253,
                    height: 60,
                    child: const Text(
                      "Join the community of designers and clients.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 118, 122, 126)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(251, 251, 251, 1),
                      border: InputBorder.none,
                      icon: Icon(Icons.person_2_outlined,
                          color: Color.fromRGBO(118, 122, 126, 1)),
                      label: Text(
                        "name",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(118, 122, 126, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(251, 251, 251, 1),
                      border: InputBorder.none,
                      suffix: Icon(Icons.visibility_off,
                          color: Color.fromRGBO(118, 122, 126, 1)),
                      label: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(118, 122, 126, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(251, 251, 251, 1),
                      border: InputBorder.none,
                      suffix: Icon(Icons.visibility_off,
                          color: Color.fromRGBO(118, 122, 126, 1)),
                      label: Text(
                        "Confirm Password",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(118, 122, 126, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 70,
                    width: 380,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        backgroundColor: Color.fromARGB(255, 0, 120, 249),
                      ),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(118, 122, 126, 1)),
                        ),
                        Text(
                          "Log In",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(0, 123, 255, 1)),
                        ),
                      ]),
                ],
              ),
            )));
  }
}
