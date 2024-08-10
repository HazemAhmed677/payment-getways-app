import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';

class ThankYouItem extends StatelessWidget {
  const ThankYouItem({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: AppStyles.regular18,
        ),
        const Spacer(),
        Text(
          text2,
          style: AppStyles.semiBold18,
        )
      ],
    );
  }
}
