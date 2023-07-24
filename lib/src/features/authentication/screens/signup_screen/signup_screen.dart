import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

import 'signup_form.dart';
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
                SignupForm(boxSpace: boxSpace),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

