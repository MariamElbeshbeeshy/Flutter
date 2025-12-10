import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color.fromARGB(24, 255, 255, 255),
      ),
      child: IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
        iconSize: 28,
      ),
    );
  }
}
