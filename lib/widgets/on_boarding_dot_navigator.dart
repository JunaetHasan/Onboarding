import 'package:flutter/material.dart';
import 'package:onboarding_screen/on_boarding_controller/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigator extends StatelessWidget {
  OnBoardingDotNavigator({super.key});

  final OnBoardingController controller = OnBoardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 150,
      left: 150,

      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          spacing: 10,
          dotHeight: 6,
          dotColor: Colors.black,
          dotWidth: 20,
        ),
      ),
    );
  }
}
