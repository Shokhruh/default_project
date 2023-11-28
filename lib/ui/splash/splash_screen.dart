import 'package:default_project/ui/welcome/welcome_screen.dart';
import 'package:default_project/ui/widgets/app_logo.dart';
import 'package:default_project/ui/widgets/global_button.dart';
import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _navigateToWelcomeScreen(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.onboardingMainBgColor,
        elevation: 0,
      ),
      backgroundColor: AppColors.onboardingMainBgColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LATECH',
              style: TextStyle(
                color: AppColors.white,
                fontFamily: 'PT-Mono',
                fontSize: 42,
                fontWeight: FontWeight.w700,
                letterSpacing: 5,
              ),
            ),
            const Text(
              'TECH MARKET',
              style: TextStyle(
                color: AppColors.white,
                fontFamily: 'SF-Pro',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 6,
              ),
            ),
            SizedBox(
              height: (height * (57 / 812)),
            ),
            AppLogo(
              screenHeight: height,
              screenWidth: width,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToWelcomeScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const WelcomeScreen();
          },
        ),
      );
    });
  }
}
