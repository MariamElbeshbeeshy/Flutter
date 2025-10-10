import 'package:flutter/material.dart';
import 'package:toku_app/Models/category_model.dart';
import 'package:toku_app/widgets/category_list.dart';

class FamilyMembersView extends StatelessWidget {
  FamilyMembersView({super.key});

  final List<CategoryModel> familyMembersList = [
    CategoryModel(
      wordInEnglish: 'father',
      wordInJapanese: 'chichioya',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    CategoryModel(
      wordInEnglish: 'mother',
      wordInJapanese: 'hahaoya',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    CategoryModel(
      wordInEnglish: 'son',
      wordInJapanese: 'musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    CategoryModel(
      wordInEnglish: 'daughter',
      wordInJapanese: 'musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    CategoryModel(
      wordInEnglish: 'Nīsan',
      wordInJapanese: 'nisan',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older bother.wav', // Corrected path
    ),
    CategoryModel(
      wordInEnglish: 'older sister',
      wordInJapanese: 'ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav', // Corrected path
    ),
    CategoryModel(
      wordInEnglish: 'younger brother',
      wordInJapanese: 'otouto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brohter.wav', // Corrected path
    ),
    CategoryModel(
      wordInEnglish: 'younger sister',
      wordInJapanese: 'imouto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav', // Corrected path
    ),
    CategoryModel(
      wordInEnglish: 'grandfather',
      wordInJapanese: 'Ojīsan', // Added
      image: 'assets/images/family_members/family_grandfather.png', // Added
      sound: 'sounds/family_members/grand father.wav', // Added
    ),
    CategoryModel(
      wordInEnglish: 'grandmother',
      wordInJapanese: 'sobo', // Added
      image: 'assets/images/family_members/family_grandmother.png', // Added
      sound: 'sounds/family_members/grand mother.wav', // Added
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Family Members')),
      body: CategoryListTile(categoryList: familyMembersList),
    );
  }
}
