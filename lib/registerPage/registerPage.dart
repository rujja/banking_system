import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practice/customWidgets/customCard.dart';
import 'package:practice/customWidgets/customCards.dart';
import 'package:practice/customWidgets/customPassword.dart';
import 'package:practice/customWidgets/customTextField.dart';

final _formKey = GlobalKey<FormState>();

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool visibility = false;
  String genderValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                  child: Column(
                    children: const [Text('card'), Text('custom')],
                  ),
                ),
                const CustomCards(children: [
                  Text('hello'),
                  Text('world'),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Register',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    title: 'First Name',
                    hintText: 'Enter first name here',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter first name';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  title: 'Middle Name',
                  hintText: 'Enter middle name here',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    title: 'Last Name',
                    hintText: 'Enter last name here',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter last name';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text('Gender'),
                DropdownButton<String>(
                  items: ['Male', 'Female', 'Other'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    );
                  }).toList(),
                  value: genderValue,
                  onChanged: (val) {
                    setState(() {
                      genderValue = val!;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  title: 'Address',
                  hintText: 'Enter address here',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    title: 'Email',
                    hintText: 'Enter email here',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    title: 'Phone no.',
                    hintText: 'Enter phone no. here',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter phone no.';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  obscureText: true,
                  controller: passwordController,
                  title: 'Password',
                  hintText: 'Enter password here',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password ';
                    }
                    if (value!.length <= 5) {
                      return 'Please enter valid password with character more than 5';
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  obscureText: true,
                  controller: confirmPasswordController,
                  title: 'Confirm password',
                  hintText: 'Enter confirm password here',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter confirm password';
                    }
                    if (passwordController.text !=
                        confirmPasswordController.text) {
                      return 'Password does not match';
                    }
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 5,
                        child: SizedBox(
                          height: 40,
                          child: TextButton(
                            onPressed: (() {
                              Navigator.pushNamed(context, '/login');
                            }),
                            child: const Text('Cancel',
                                style: TextStyle(color: Colors.pink)),
                          ),
                        )),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Expanded(
                        flex: 5,
                        child: SizedBox(
                          height: 40,
                          child: TextButton(
                              onPressed: (() {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushNamed(context, '/');
                                }
                              }),
                              child: const Text('Continue',
                                  style: TextStyle(color: Colors.pink))),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
