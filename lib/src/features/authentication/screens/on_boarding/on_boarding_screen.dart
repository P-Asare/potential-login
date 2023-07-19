import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_widget.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    final List<Widget> pages = [
      OnBoardPageWidget(
        screenHeight: screenHeight,
        pageNum: 1,
        imageName: onboardImage1,
        mainText: mainTextOnBoard1,
        subText: subTextOnBoard1,
        bgColor: Colors.white,
      ), // page 1
      OnBoardPageWidget(
        screenHeight: screenHeight,
        pageNum: 2,
        imageName: onboardImage2,
        mainText: mainTextOnBoard2,
        subText: subTextOnBoard2,
        bgColor: Colors.pink,
      ), // page 2
      OnBoardPageWidget(
        screenHeight: screenHeight,
        pageNum: 3,
        imageName: onboardImage3,
        mainText: mainTextOnBoard3,
        subText: subTextOnBoard3,
        bgColor: Colors.lightBlue,
      ), // page 3
    ];

    return Scaffold(
        body: Stack(
      children: [
        LiquidSwipe(
          liquidController: controller,
          pages: pages,
          slideIconWidget: const Icon(Icons.arrow_back_ios_new),
          enableSideReveal: true,
          onPageChangeCallback: onPageChangedCallback,
        ),
        Positioned(
          bottom: 80,
          left: 145,
          child: OutlinedButton(
            onPressed: () {
              int nextPage = controller.currentPage + 1;
              controller.animateToPage(
                page: nextPage,
              );
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          right: 15,
          child: TextButton(
            onPressed: () => controller.jumpToPage(page: 2),
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Color.fromARGB(255, 83, 81, 81),
              ),
            ),
          ),
        ),
        Positioned(
          left: 165,
          bottom: 20,
          child: AnimatedSmoothIndicator(
            activeIndex: controller.currentPage,
            count: 3,
            effect: const WormEffect(
              activeDotColor: Colors.black,
              dotHeight: 5,
            ),
          ),
        ),
      ],
    ));
  }

  void onPageChangedCallback(int activePageIndex) {
    setState(() => currentPage = activePageIndex);
  }
}
