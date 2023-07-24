import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "OR",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(googleLogo),
              width: 25,
            ),
            label: Text(
              googleText,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: signupAccount,
              style: Theme.of(context).textTheme.bodySmall,
              children: const [
                TextSpan(
                  text: smallLogin,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
