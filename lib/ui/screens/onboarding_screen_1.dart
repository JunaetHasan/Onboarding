import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/o_images/o_images.dart';
import 'package:onboarding_screen/o_text/o_text.dart';
import 'package:onboarding_screen/on_boarding_controller/on_boarding_controller.dart';
import 'package:onboarding_screen/widgets/on_boarding_dot_navigator.dart';
import 'package:onboarding_screen/widgets/on_boarding_next_botton.dart';
import 'package:onboarding_screen/widgets/on_boarding_page.dart';
import 'package:onboarding_screen/widgets/on_boarding_skip_botton.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final OnBoardingController controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  image: OImages.screen1,
                  title: OText.onboardingTitle1,
                  subTitle: OText.onboardingTitle1,
                ),
                OnBoardingPage(
                  image: OImages.screen2,
                  title: OText.onboardingTitle2,
                  subTitle: OText.onboardingSubtitle2,
                ),
                OnBoardingPage(
                  image: OImages.screen3,
                  title: OText.onboardingTitle3,
                  subTitle: OText.onboardingSubtitle3,
                ),
              ],
            ),

            OnBoardingDotNavigator(),

            OnBoardingNextBotton(),

            OnBoardingSkipBotton(),
          ],
        ),
      ),
    );
  }
}
