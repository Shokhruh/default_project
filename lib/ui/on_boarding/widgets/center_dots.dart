import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class CenterDots extends StatelessWidget {
  const CenterDots({super.key, required this.activeDotOrder});

  final int activeDotOrder;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index){

        if(activeDotOrder == index + 1) {
          return activeDot();
        }
        else {
          return inactiveDots();
        }

      }),
    );
  }

  Widget activeDot() {
    return Container(
      width: 7,
      height: 7,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.white,
      ),
    );
  }

  Widget inactiveDots() {
    return Container(
      width: 5,
      height: 5,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.white.withOpacity(0.32),
      ),
    );
  }
}
