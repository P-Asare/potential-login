import 'package:flutter/material.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../../../constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final double screenHeight = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: (isDarkMode) ? Colors.black87 : Colors.yellow,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Image(
                image: const AssetImage(welcomeImage),
                height: screenHeight * 0.6,
              ),
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
            const SizedBox(
              height: 30,
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
                      child: const Text(loginString),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
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
