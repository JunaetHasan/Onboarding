import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/ui/screens/onboarding_screen_1.dart';

void main() => runApp(OnboardingScreen());

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(

            style: ElevatedButton.styleFrom(
              elevation: 10.0,
               padding: EdgeInsets.symmetric(horizontal: 180,vertical: 20),
              backgroundColor: Colors.blue.shade900,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              )
              
            )
          )
        ),
        home: OnboardingScreen1());
  }
}
