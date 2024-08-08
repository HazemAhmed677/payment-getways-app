import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        overlayColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        backgroundColor: const Color(0xff34A853),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 23.0,
        ),
        child: Text(
          'Complete Payment',
          style: AppStyles.medium22.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
