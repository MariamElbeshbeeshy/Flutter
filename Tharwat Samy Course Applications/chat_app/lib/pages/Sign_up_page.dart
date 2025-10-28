import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  static String id = 'Sign-up';
  String? name;
  String? email;
  String? password;
  String? confirmedPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/scholar.png', height: 100),
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
                        onChanged: (value) => name = value,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: 'Name'),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => email = value,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: 'Email'),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => password = value,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: 'Password'),
                        obscureText: true,
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => confirmedPassword = value,
                        validator: (value) {
                          if (value != password) {
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
                      await SignUpUser(
                        context,
                        name!,
                        password!,
                        confirmedPassword!,
                        email!,
                      );
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
    );
  }
}

SignUpUser(
  BuildContext context,
  String name,
  String password,
  String confirmedPassword,
  String email,
) async {
  // This function is currently not used.
  if (password == confirmedPassword) {
    try {
      await SignUp(email, password);
      ShowMessage(context, 'Welcome, $name', 'Signed up successfully.');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ShowMessage(context, 'Alert!', 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        ShowMessage(
          context,
          'Alert!',
          'The account already exists for that email.',
        );
      }
    } catch (e) {
      ShowMessage(context, 'Alert!', e.toString());
     }
  }
}

void ShowMessage(BuildContext context, String title, String message) {
  showDialog(
    context: context, // Required
    builder: (context) {
      // Required
      return AlertDialog(title: Text(title), content: Text(message));
    },
  );
}

Future<void> SignUp(String email, String password) async {
  var auth = FirebaseAuth.instance;
  UserCredential userCredential = await auth.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}
