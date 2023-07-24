import 'package:flutter/material.dart';
import 'package:login_app/src/features/authentication/screens/signup_screen/signup_footer.dart';
import 'signup_form.dart';
import 'signup_header.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    const double boxSpace = 15;

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
                const SignupForm(boxSpace: boxSpace),
                const SignupFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
