import 'package:flutter/material.dart';

import '../theme/color.dart';
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  AppColor.gradientColor1,
                  AppColor.gradientColor2,
                  AppColor.gradientColor3,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width, height),
              backgroundColor:
              Colors.transparent, // Set transparent background
              shadowColor: Colors.transparent, // Remove shadow
            ),
            onPressed: onPressed,
            child: const Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
