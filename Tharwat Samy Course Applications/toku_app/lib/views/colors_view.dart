import 'package:flutter/material.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colors')),
      body: const Center(child: Text('Colors View')),
    );
  }
}
