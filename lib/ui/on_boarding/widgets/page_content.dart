import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class PageContent extends StatelessWidget {
  const PageContent({super.key, required this.title, required this.image, required this.height, required this.imageHeight});

  final String title;
  final String image;
  final double height;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Image.asset(image, height: imageHeight * height / 812,),
        SizedBox(height: height * (40 / 812),),
        Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
            fontFamily: "SF-Pro",
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
