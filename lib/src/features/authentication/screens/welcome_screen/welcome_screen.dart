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
                Text(
                  subTextWelcome,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
