import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: AppStyles.semiBold24,
        ),
        Text(
          r'$50.97',
          style: AppStyles.semiBold24,
        ),
      ],
    );
  }
}
