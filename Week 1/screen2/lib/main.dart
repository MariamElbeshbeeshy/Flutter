import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  //MainApp({Key key} : Super(key: key));

  @override
  _MainApp_State createState() => _MainApp_State();
}

class _MainApp_State extends State<MainApp> {
  bool b1_isPressed = false;
  bool b2_isPressed = false;
  bool b3_isPressed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Good Afternoon, 🌙",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 10),
                      ),
                      const Text(
                        "Mariam Waleed",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ]),
              ),
            ),
            body: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Vertical alignment
  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromARGB(111, 201, 200, 200),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 5),
                          )
                        ]),
                    child: const TextField(
                        decoration: InputDecoration(
                      labelText: "Search for designers, categories...",
                      labelStyle: TextStyle(
                          color: Color.fromARGB(255, 132, 132, 132),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide.none,
                      ),
                    )),
                  ),
                  SizedBox(height: 20),
                  const Text(
                    'Catagories',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  SizedBox(height:10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              b1_isPressed = !b1_isPressed;
                            });
                          },
                          child: Text('Industerial Design'),
                          style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all(
                                b1_isPressed ? Colors.blue : Colors.black,
                              ),
                              backgroundColor: WidgetStateProperty.all(
                                  b1_isPressed
                                      ? Color.fromARGB(67, 94, 178, 247)
                                      : Colors.transparent),
                              side: WidgetStateProperty.all(
                                BorderSide(
                                    color: b1_isPressed
                                        ? Colors.blue
                                        : Colors.grey,
                                    width: 1.5),
                              )),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              b2_isPressed = !b2_isPressed;
                            });
                          },
                          child: Text('Interior Design'),
                          style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all(
                                b2_isPressed ? Colors.blue : Colors.black,
                              ),
                              backgroundColor: WidgetStateProperty.all(
                                  b2_isPressed
                                      ? Color.fromARGB(67, 94, 178, 247)
                                      : Colors.transparent),
                              side: WidgetStateProperty.all(
                                BorderSide(
                                    color: b2_isPressed
                                        ? Colors.blue
                                        : Colors.grey,
                                    width: 1.5),
                              )),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              b3_isPressed = !b3_isPressed;
                            });
                          },
                          child: Text('Graphic Design'),
                          style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all(
                                b3_isPressed ? Colors.blue : Colors.black,
                              ),
                              backgroundColor: WidgetStateProperty.all(
                                  b3_isPressed
                                      ? Color.fromARGB(67, 94, 178, 247)
                                      : Colors.transparent),
                              side: WidgetStateProperty.all(
                                BorderSide(
                                    color: b3_isPressed
                                        ? Colors.blue
                                        : Colors.grey,
                                    width: 1.5),
                              )),
                        ),
                      ])),
                      const SizedBox(height: 30),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        const Text("Top Rated Designers",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),),
                        Text('View All',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),),
                      ],),
                      Divider(),
                      const SizedBox(height:10),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Row(
                                children: [
                          Container(

                          ),
                            ]),
                          Container(
                            height: 200,
                            width: 150,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(111, 201, 200, 200),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 5),
                            )],
                            borderRadius: BorderRadius.circular(10) ,
                            image: DecorationImage(
                              image: NetworkImage("https://static.vecteezy.com/system/resources/previews/007/296/443/original/user-icon-person-icon-client-symbol-profile-icon-vector.jpg")
                              )
                          ),
                          child: Column(children: [
                            Text("")
                          ],)
                          ),
                        ])
                        ],
                      ),

                    
                ],
              ),
            )));
  }
}
