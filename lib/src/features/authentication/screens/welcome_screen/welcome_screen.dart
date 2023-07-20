import 'package:flutter/material.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../../../constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(welcomeImage),
              height: screenHeight * 0.6,
            ),
            Column(
              children: [
                Text(
                  mainTextWelcome,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 3,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    subTextWelcome,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: Colors.black87,
                        side: const BorderSide(
                          color: Colors.black87,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                      child: const Text(loginString),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black87,
                        // side: const BorderSide(
                        //   color: Colors.black87,
                        // ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(signUpString),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
