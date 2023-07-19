import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  final int animationDuration = 1600;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(
              milliseconds: animationDuration,
            ),
            top: (animate) ? -50 : -80,
            left: (animate) ? -40 : -80,
            child: Image(
              image: const AssetImage(
                splashIconImage,
              ),
              height: screenHeight * 0.2,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(
              milliseconds: animationDuration,
            ),
            top: 100,
            left: (animate) ? 40 : 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  compName,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  tagLine,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(
              milliseconds: animationDuration,
            ),
            left: 60,
            bottom: (animate) ? 200 : 150,
            child: AnimatedOpacity(
              duration: Duration(
                milliseconds: animationDuration,
              ),
              opacity: (animate) ? 1 : 0,
              child: const Image(
                image: AssetImage(splashImage),
              ),
            ),
          ),
          Positioned(
            top: 200,
            right: 50,
            child: AnimatedOpacity(
              duration: Duration(
                milliseconds: animationDuration,
              ),
              opacity: (animate) ? 1 : 0,
              child: const Icon(
                Icons.phone_in_talk_outlined,
                size: 40,
                color: Colors.black45,
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 50,
            child: AnimatedOpacity(
              duration: Duration(
                milliseconds: animationDuration,
              ),
              opacity: (animate) ? 1 : 0,
              child: const Icon(
                Icons.chat_outlined,
                size: 50,
                color: Colors.black45,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(
              milliseconds: animationDuration,
            ),
            right: 35,
            bottom: (animate) ? 90 : 40,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: aPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 5000));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoard(),
        ));
  }
}
