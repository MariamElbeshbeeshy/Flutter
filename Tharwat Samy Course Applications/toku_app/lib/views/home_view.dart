import 'package:flutter/material.dart';
import 'package:toku_app/views/colors_view.dart';
import 'package:toku_app/views/family_members_view.dart';
import 'package:toku_app/views/numbers_view.dart';
import 'package:toku_app/views/phrases_view.dart';
import 'package:toku_app/widgets/category_list.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf7d2),
      appBar: AppBar(
        title: const Text(
          'Toku Language Learning App',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xfffbf7d2),
        elevation: 5,
        shadowColor: const Color(0xff6b4226),
      ),
      body: Column(
        children: [
          
          Category(
            text: 'Numbers',
            icon: Icons.numbers,
            NavigateTo: NumbersView(),
            bright: false,
          ),

          Category(
            text: 'Family Members',
            icon: Icons.people,
            NavigateTo: FamilyMembersView(),
            bright: true,
          ),
          Category(
            text: 'Colors',
            icon: Icons.color_lens,
            NavigateTo: ColorsView(),
            bright: false,
          ),
          Category(
            text: 'Phrases',
            icon: Icons.chat,
            NavigateTo: PhrasesView(),
            bright: true,
          ),
        ],
      ),
    );
  }
}
