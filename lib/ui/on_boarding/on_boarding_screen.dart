import 'package:default_project/ui/on_boarding/widgets/center_dots.dart';
import 'package:default_project/ui/on_boarding/widgets/page_content.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.onboardingMainBgColor,
        elevation: 0,
      ),
      backgroundColor: AppColors.onboardingMainBgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              children: [
                PageContent(title: "The best tech market", image: AppImages.map, imageHeight: 268, height: height,),
                PageContent(title: "A lot of exclusives", image: AppImages.pc, imageHeight: 496, height: height,),
                PageContent(title: "Sales all the time", image: AppImages.procent, imageHeight: 410, height: height,),
              ],
            ),
          ),

          SizedBox(
            height: height * (39 / 812),
          ),
          CenterDots(activeDotOrder: 1),
          SizedBox(
            height: height * (40 / 812),
          ),
          const Text(
            "Next",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "SF-Pro",
                color: AppColors.white),
          ),
          SizedBox(
            height: height * (40 / 812),
          ),
        ],
      ),
    );
  }
}
