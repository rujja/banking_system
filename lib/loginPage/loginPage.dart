import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'ABC Banking',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 12,
                        spreadRadius: 2,
                        color: Colors.grey.withOpacity(0.4))
                  ],
                  // border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Login',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30.0, bottom: 16.0),
                            child: Text('Account email'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF5F5F5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 15),
                                  hintText: "Enter account email here",
                                  hintStyle: TextStyle(fontSize: 14)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30.0, bottom: 16.0),
                            child: Text(' Password'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF5F5F5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: TextField(
                              obscureText: !visibility,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  suffixIcon: visibility
                                      ? IconButton(
                                          icon: Icon(Icons.lock_open),
                                          onPressed: (() {
                                            setState(() {
                                              visibility = false;
                                            });
                                          }),
                                        )
                                      : IconButton(
                                          icon: Icon(Icons.lock),
                                          onPressed: (() {
                                            setState(() {
                                              visibility = true;
                                            });
                                          }),
                                        ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 15),
                                  hintText: "Enter password here",
                                  hintStyle: TextStyle(fontSize: 14)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: 50,
                                child: TextButton(
                                  onPressed: (() {
                                    Navigator.pushNamed(context, '/register');
                                  }),
                                  child: const Text('Register'),
                                ),
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 50,
                              color: Colors.grey,
                            ),
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: 50,
                                child: TextButton(
                                  onPressed: (() {
                                    Navigator.pushNamed(context, '/');
                                  }),
                                  child: const Text('Login'),
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
            ],
          ),
        ],
      ),
    );
  }
}
