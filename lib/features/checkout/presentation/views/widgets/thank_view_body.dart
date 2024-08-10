import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/item.dart';

class ThankViewBody extends StatelessWidget {
  const ThankViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 24,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffD9D9D9),
        ),
        child: Column(
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
            Text(
              'Your transaction was successful',
              style: AppStyles.regular20,
            ),
            const SizedBox(
              height: 42,
            ),
            const SizedBox(
              height: 58,
            ),
          ],
        ),
      ),
    );
  }
}
