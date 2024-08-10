import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_colors.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_item_of_thank_you.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/thank_you_word.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/total_price.dart';

class ThankYouElements extends StatelessWidget {
  const ThankYouElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ThankYouWord(),
        const AllItemsOfThankYou(),
        Divider(
          thickness: 2,
          color: AppColors.c7,
        ),
        const SizedBox(
          height: 24,
        ),
        const TotalPrice(),
      ],
    );
  }
}
