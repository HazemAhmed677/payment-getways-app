import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_payment_methods.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_credit_card_with_form.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_pay_button.dart';

import '../../../../../core/utils/app_styles.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
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
          const SliverToBoxAdapter(
            child: AllPaymentsMethods(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 34,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCardWithForm(
              formKey: formKey,
              autovalidateMode: autovalidateMode,
            ),
          ),
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
                    widget: Text(
                      'Pay',
                      style: AppStyles.medium22.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        autovalidateMode = AutovalidateMode.disabled;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ThankYouView(),
                        ));
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                      }
                      setState(() {});
                    },
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
