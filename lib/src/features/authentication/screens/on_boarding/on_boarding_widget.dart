import 'package:flutter/material.dart';

class OnBoardPageWidget extends StatelessWidget {
  const OnBoardPageWidget({
    super.key,
    required this.screenHeight,
    required this.pageNum,
    required this.imageName,
    required this.mainText,
    required this.subText,
    required this.bgColor,
  });

  final double screenHeight;
  final int pageNum;
  final String imageName;
  final String mainText;
  final String subText;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(
              imageName,
            ),
            height: screenHeight * 0.5,
          ),
          Column(
            children: [
              Text(
                mainText,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                subText,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Text(
            "$pageNum/3",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
