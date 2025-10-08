import 'package:flutter/material.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phrases')),
      body: const Center(child: Text('Phrases View')),
    );
  }
}
