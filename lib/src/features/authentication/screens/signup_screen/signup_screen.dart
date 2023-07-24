import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

import 'signup_header.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double boxSpace = 15;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 20,
            ),
            child: Column(
              children: [
                SignupHeader(screenHeight: screenHeight),
                Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            hintText: formName,
                            labelText: formName,
                          ),
                        ),
                        SizedBox(
                          height: boxSpace,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(),
                            hintText: email,
                            labelText: email,
                          ),
                        ),
                        SizedBox(
                          height: boxSpace,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.numbers),
                            border: OutlineInputBorder(),
                            hintText: formNumber,
                            labelText: formNumber,
                          ),
                        ),
                        SizedBox(
                          height: boxSpace,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            border: OutlineInputBorder(),
                            hintText: password,
                            labelText: password,
                          ),
                        ),
                        SizedBox(
                          height: boxSpace,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              signUpString,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

