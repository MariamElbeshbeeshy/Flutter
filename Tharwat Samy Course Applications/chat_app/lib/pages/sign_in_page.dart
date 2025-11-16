import 'package:chat_app/helper/constants.dart';
import 'package:chat_app/helper/show_message.dart';
import 'package:chat_app/models/authintication_model.dart';
import 'package:chat_app/pages/Sign_up_page.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});
  static String id = 'Sign-in';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? email;

  String? password;

  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo, height: 100),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                fontFamily: 'Limelight-Regular',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter your email';
                          }
                          return null;
                        },
                        onChanged: (value) => email = value,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: 'Email'),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter your password';
                          }

                          return null;
                        },
                        onChanged: (value) => password = value,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: 'Password'),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                OutlinedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      try {
                        isLoading = true;
                        setState(() {});
                        await Authintication().SignIn(email!, password!);
                        ShowMessage(
                          context,
                          'Welcome',
                          'Signed in successfully.',
                          [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, ChatPage.id, arguments: email),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          ShowMessage(
                            context,
                            'Alert!',
                            'No user found for that email.',
                            [],
                          );
                        } else if (e.code == 'wrong-password') {
                          ShowMessage(
                            context,
                            'Alert!',
                            'Wrong password provided for that user.',
                            [],
                          );
                        } else if (e.code == 'invalid-email') {
                          ShowMessage(
                            context,
                            'Alert!',
                            'The email address is badly formatted.',
                            [],
                          );
                        } else {
                          ShowMessage(context, 'Alert!', e.toString(), []);
                        }
                      } catch (e) {
                        ShowMessage(context, 'Alert!', e.toString(), []);
                      }
                      isLoading = false;
                      setState(() {});
                    }
                  },
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpPage.id);
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 139, 182, 255),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
