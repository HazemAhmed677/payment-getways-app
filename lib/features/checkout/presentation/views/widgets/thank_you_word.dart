import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';

class ThankYouWord extends StatelessWidget {
  const ThankYouWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 66,
        ),
        Text(
          'Thank you!',
          style: AppStyles.medium25,
        ),
        const SizedBox(
          height: 2,
        ),
        Opacity(
          opacity: 0.8,
          child: Text(
            'Your transaction was successful',
            style: AppStyles.regular20,
          ),
        ),
      ],
    );
  }
}
