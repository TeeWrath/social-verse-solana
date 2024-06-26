import 'package:flutter/material.dart';
import 'package:wlt/utils.dart';

// A custom progress indicator
class ProgressIndicatorCustom extends StatelessWidget {
  const ProgressIndicatorCustom({super.key, this.h = 50, this.w = 50});
  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h,
      child: Stack( // Using stack so that the CircularProgressIndicator is above the logo
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/solanaLogoMark.png',
            fit: BoxFit.cover,
            height: (2/5)*h, // Adjusting dimensions in a visually good ratio
            width: (2/5)*w,
          ),
          SizedBox(
            height: (3/5)*h,
            width: (3/5)*w,
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
              strokeWidth: 3,
            ),
          ),
        ],
      ),
    );
  }
}
