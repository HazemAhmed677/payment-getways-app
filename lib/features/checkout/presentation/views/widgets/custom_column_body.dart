import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/helpers/modal_bottom_sheet.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_items.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_pay_button.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/total_price.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomColumnBody extends StatelessWidget {
  const CustomColumnBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: Center(
            child: Image.asset(
              Assets.imagesMycart,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const AllItems(),
        const Divider(
          indent: 15,
          endIndent: 15,
          height: 30,
          thickness: 2,
        ),
        const TotalPrice(),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 12,
          ),
          child: CustomPayButton(
            widget: Text(
              'Complete Payment',
              style: AppStyles.medium22.copyWith(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              modalBottomSheet(context);
            },
          ),
        )
      ],
    );
  }
}
