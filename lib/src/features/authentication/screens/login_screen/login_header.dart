import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
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
        ],
      ),
    );
  }
}
