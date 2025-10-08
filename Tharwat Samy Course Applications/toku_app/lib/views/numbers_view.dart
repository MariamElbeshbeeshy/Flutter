import 'package:flutter/material.dart';
import 'package:toku_app/widgets/numbers_list.dart';

class NumbersView extends StatelessWidget {
  NumbersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Numbers')),
      body: Column(children: [NumbersListTile()]),
    );
  }
}


