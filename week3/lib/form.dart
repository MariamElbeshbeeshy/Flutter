import 'package:flutter/material.dart';
import 'homepage.dart';
import 'main.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String? gender;
  bool conditions_Check = false;

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Homepage())),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
          ),
        ),
        title: Text(
          "Form Page",
          style: TextStyle(
            color: Color(int.parse('1F81B9', radix: 16)).withOpacity(1.0),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "OpenSans",
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
                title: Text(
                  "Enable Dark Mode",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                value: DarkMode,
                onChanged: (value) {
                  setState(() {
                    DarkMode = value;
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainApp()));
                  });
                },
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
                trackOutlineColor:
                    MaterialStateProperty.all(Colors.transparent)),
            SizedBox(
              height: 20,
            ),
            Text(
              "First Name",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Please Enter Your First Name",
              ),
              controller: firstname,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field is required";
                } else if (value.length > 15) {
                  return "Can't be more than 15 characters";
                } else {
                  return null;
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Last Name",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Please Enter Your Last Name",
              ),
              controller: lastname,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field is required";
                } else if (value.length > 15) {
                  return "Can't be more than 15 characters";
                } else {
                  return null;
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Choose Your Gender",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            RadioListTile(
                title: Text("Male"),
                value: 'male',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                }),
            RadioListTile(
                title: Text("Female"),
                value: 'female',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                }),
            Text(
              "Do you agree to our terms and conditions?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CheckboxListTile(
              value: conditions_Check,
              onChanged: (value) {
                setState(() {
                  conditions_Check = value ?? false;
                });
              },
              title: Text("Yes, I agree."),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          icon: Icon(Icons.info),
                          title: Text(
                              "Thank you, ${firstname.text} ${lastname.text} for submitting the form."),
                          actions: [],
                        );
                      });
                },
                child: Text("Submit Form")),
          ],
        ),
      ),
    );
  }
}
