import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<int> teamsScore = [0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basketball Points Counter'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 8,
        shadowColor: Colors.black.withValues(alpha: 0.5),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          '${teamsScore[0]}',
                          style: TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamsScore[0] += 1;
                            });
                          },

                          style: ButtonStyle(
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Colors.orange,
                            ),
                            foregroundColor: WidgetStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamsScore[0] += 2;
                            });
                          },

                          style: ButtonStyle(
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Colors.orange,
                            ),
                            foregroundColor: WidgetStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamsScore[0] += 3;
                            });
                          },
                          style: ButtonStyle(
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Colors.orange,
                            ),
                            foregroundColor: WidgetStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      thickness: 1.4,
                      width: 65,
                      color: Color.fromARGB(108, 158, 158, 158),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          '${teamsScore[1]}',
                          style: TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamsScore[1] += 1;
                            });
                          },

                          style: ButtonStyle(
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Colors.orange,
                            ),
                            foregroundColor: WidgetStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamsScore[1] += 2;
                            });
                          },

                          style: ButtonStyle(
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Colors.orange,
                            ),
                            foregroundColor: WidgetStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamsScore[1] += 3;
                            });
                          },

                          style: ButtonStyle(
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Colors.orange,
                            ),
                            foregroundColor: WidgetStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamsScore = [0, 0];
                  });
                },

                style: ButtonStyle(
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.orange),
                  foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
                ),
                child: const Text('Reset', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
