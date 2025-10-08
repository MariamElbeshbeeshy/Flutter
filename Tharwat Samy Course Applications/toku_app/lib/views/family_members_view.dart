import 'package:flutter/material.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Family Members')),
      body: const Center(child: Text('Family Members View')),
    );
  }
}
