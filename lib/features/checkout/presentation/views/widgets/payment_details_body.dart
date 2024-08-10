import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_payment_methods.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_credit_card_with_form.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_pay_button.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 22,
            ),
          ),
          const SliverToBoxAdapter(child: AllPaymentsMethods()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 34,
            ),
          ),
          const SliverToBoxAdapter(child: CustomCreditCardWithForm()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 8,
                  ),
                ),
                Align(
                  child: CustomPayButton(
                    text: 'Pay',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
