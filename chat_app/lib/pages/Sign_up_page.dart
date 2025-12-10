import 'package:chat_app/helper/constants.dart';
import 'package:chat_app/helper/show_message.dart';
import 'package:chat_app/models/authintication_model.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});
  static String id = 'Sign-up';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String? name;

  String? email;

  String? password;

  String? confirmedPassword;

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Padding(
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
                    'Sign Up',
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
                              return 'Please Enter your name';
                            }
                            return null;
                          },
                          onChanged: (value) => name = value,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(hintText: 'Name'),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter your Email';
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
                        const SizedBox(height: 10),
                        TextFormField(
                          onChanged: (value) => confirmedPassword = value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm your password';
                            } else if (value != password) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        if (password == confirmedPassword) {
                          try {
                            await Authintication().SignUp(email!, password!);
                            ShowMessage(
                              context,
                              'Welcome, $name',
                              'Signed up successfully.',
                              [
                                TextButton(
                                  onPressed: () =>
                                   Navigator.pushNamed(context, ChatPage.id, arguments: email),
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              ShowMessage(
                                context,
                                'Alert!',
                                'The password provided is too weak.',
                                [],
                              );
                            } else if (e.code == 'email-already-in-use') {
                              ShowMessage(
                                context,
                                'Alert!',
                                'The account already exists for that email.',
                                [],
                              );
                            }
                          } catch (e) {
                            ShowMessage(context, 'Alert!', e.toString(), []);
                          }
                        }
                        isLoading = false;
                        setState(() {});
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign In',
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
      ),
    );
  }
}
