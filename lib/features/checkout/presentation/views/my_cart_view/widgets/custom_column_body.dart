import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/all_items.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/custom_pay_button.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/total_price.dart';

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
        const Padding(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 12,
          ),
          child: CustomPayButton(),
        )
      ],
    );
  }
}
