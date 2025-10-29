import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void ShowMessage(
  BuildContext context,
  String title,
  String message,
  List<Widget> actions,
) {
  showDialog(
    context: context, // Required
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: actions,
      );
    },
  );
}

Future<void> SignUp(String email, String password) async {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}

Future<void> SignIn(String email, String password) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
}
