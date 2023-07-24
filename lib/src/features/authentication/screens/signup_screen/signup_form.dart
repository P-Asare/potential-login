import 'package:flutter/material.dart';
import 'package:login_app/src/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.boxSpace,
  });

  final double boxSpace;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
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
    );
  }
}
