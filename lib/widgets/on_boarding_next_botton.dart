import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/on_boarding_controller/on_boarding_controller.dart';

import 'elevated_button_p.dart';

class OnBoardingNextBotton extends StatelessWidget {
  OnBoardingNextBotton({super.key});

  final OnBoardingController controller = OnBoardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      //left: 300,
      child: ElevatedButtonE(
        onPressed: controller.nextPage,
        child: Obx(
          () => Text(controller.currentIndex == 2 ? 'GetStart' : 'Next'),
        ),
      ),
    );
  }
}
