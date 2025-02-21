import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.arrow_back),
              actions: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.settings),
                )
              ],
              backgroundColor: Colors.white,
            ),
            body: Column(children: [
              //image container
              Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.vecteezy.com/system/resources/previews/007/296/443/original/user-icon-person-icon-client-symbol-profile-icon-vector.jpg"))),
                height: 150,
                width: 150,
              ),

              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(15),
                width: 500,
                child: Column(
                  children: [
                    const Text(
                      "GFX Agency",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Text("UI UX DESIGN",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 12),
                        textAlign: TextAlign.center),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(5),
                          width: 200,
                          height: 40,
                          child: const Text(
                            "Your Email",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                            textAlign: TextAlign.left,
                          )),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.message),
                        prefixIconColor: Color.fromARGB(255, 162, 160, 160),
                        labelText: "xxx@gmail.com",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 168, 165, 165)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(5),
                          width: 200,
                          height: 40,
                          child: const Text(
                            "Phone Number",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                            textAlign: TextAlign.left,
                          )),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        prefixIconColor: Color.fromARGB(255, 162, 160, 160),
                        labelText: "+93123135",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 168, 165, 165)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(5),
                          width: 200,
                          height: 40,
                          child: const Text(
                            "Website",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                            textAlign: TextAlign.left,
                          )),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "www.gfx.com",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 168, 165, 165)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(5),
                          width: 200,
                          height: 40,
                          child: const Text(
                            "Password",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                            textAlign: TextAlign.left,
                          )),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Color.fromARGB(255, 162, 160, 160),
                        labelText: "xxx@gmail.com",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 168, 165, 165)),
                        suffixIcon: Icon(Icons.close),
                        suffixIconColor: Color.fromARGB(255, 162, 160, 160),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      width:
                          double.infinity, // Makes the button take full width
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          alignment: Alignment.center,
                          foregroundColor: Color.fromARGB(255, 243, 170, 33),
                          side: BorderSide(
                              color: const Color.fromARGB(255, 243, 170, 33),
                              width: 2),
                        ),
                        child: const Text("Logout"),
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
