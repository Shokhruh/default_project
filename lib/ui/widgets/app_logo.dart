import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, required this.screenHeight, required this.screenWidth});

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 216 / 812,
      width: screenHeight * 216 / 812,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.onboardingMainBgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            spreadRadius: 50,
            blurRadius: 40,
            offset: const Offset(-40, -30),
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          AppImages.logo,
        ),
      ),
    );
  }
}
