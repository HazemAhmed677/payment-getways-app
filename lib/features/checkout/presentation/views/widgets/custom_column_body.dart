import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/features/checkout/data/models/payment_input_intent_model.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_items.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_payment_methods.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_pay_button.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/total_price.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../manager/cubit/stripe_cubit.dart';

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
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      16,
                    ),
                    topRight: Radius.circular(
                      16,
                    ),
                  ),
                ),
                context: context,
                builder: (context) => BlocProvider(
                  create: (context) => StripeCubit(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22.0,
                        vertical: 24,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 24),
                            child: AllPaymentsMethods(),
                          ),
                          Builder(builder: (context) {
                            return BlocConsumer<StripeCubit, StripeState>(
                              listener: (context, state) {
                                if (state is StripeSuccess) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ThankYouView(),
                                    ),
                                  );
                                }
                                if (state is StripeFailure) {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(state.errorMsg),
                                    ),
                                  );
                                }
                              },
                              builder: (context, state) {
                                return CustomPayButton(
                                  widget: (state is StripeLoading)
                                      ? const CircularProgressIndicator()
                                      : Text(
                                          'Continue',
                                          style: AppStyles.medium22.copyWith(
                                            color: Colors.black,
                                          ),
                                        ),
                                  onPressed: () async {
                                    PaymentIntentInputModel
                                        paymentIntentInputModel =
                                        PaymentIntentInputModel(
                                      amount: '300',
                                      currency: 'USD',
                                    );
                                    await BlocProvider.of<StripeCubit>(context)
                                        .makePayment(
                                      paymentIntentInputModel:
                                          paymentIntentInputModel,
                                    );
                                  },
                                );
                              },
                            );
                          }),
                        ],
                      ),
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
