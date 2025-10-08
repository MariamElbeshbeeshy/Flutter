import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget NavigateTo;
  final bool bright;
  const Category({
    super.key,
    required this.text,
    required this.icon,
    required this.NavigateTo,
    required this.bright,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
        color: (bright == true) ? Color(0xff9747FF) : Color(0xfffbf7d2),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: (bright == true) ? Color(0xff4F4F4F) : Colors.white,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: (bright == true) ? Color(0xff9747FF) : Color(0xfffbf7d2),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavigateTo),
        );
      },
      style: ListTileStyle.list,
      visualDensity: VisualDensity(vertical: 3),
      tileColor: (bright == true) ? Color(0xfffbf7d2) : Color(0xff9747FF),
    );
  }
}
