import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.white,
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.mainBlueText,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SF-Pro',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
