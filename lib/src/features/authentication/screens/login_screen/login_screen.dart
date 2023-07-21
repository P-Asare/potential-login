import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: const AssetImage(welcomeImage),
                  height: screenHeight * 0.2,
                ),
                Text(
                  mainTextLogin,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  subTextLogin,
                  style: Theme.of(context).textTheme.displayMedium,
                ),

                /*Second section of page */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
