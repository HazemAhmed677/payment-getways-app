import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_items.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_payment_methods.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_pay_button.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/total_price.dart';

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
            text: 'Complete Payment',
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(
                      16,
                    ),
                  ),
                ),
                context: context,
                builder: (context) => Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: AllPaymentsMethods(),
                        ),
                        CustomPayButton(
                          text: 'Confirm Payment',
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const ThankYouView(),),);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
