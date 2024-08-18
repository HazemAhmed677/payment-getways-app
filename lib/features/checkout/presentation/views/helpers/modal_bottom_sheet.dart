import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';
import 'package:payment_getways_app/features/checkout/presentation/manager/cubit/stripe_cubit.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/all_payment_methods.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_pay_button.dart';

Future<dynamic> modalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
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
                          builder: (context) => const ThankYouView(),
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
                        // PaymentIntentInputModel paymentIntentInputModel =
                        //     PaymentIntentInputModel(
                        //   amount: '300',
                        //   currency: 'USD',
                        //   // customerId:
                        //   //     'sk_test_51PmiHeRs5W8L4MjRAenJvaJz67KWoyro0jh3oKofDAjpDQPYfQeFkeHFbTcNj61S15Mi22GP3UF5ZqNrHLeDyL3s00qU81CkXP',
                        // );
                        // await BlocProvider.of<StripeCubit>(context).makePayment(
                        //   paymentIntentInputModel: paymentIntentInputModel,
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaypalCheckoutView(
                                onSuccess: () {
                                  print('Success');
                                },
                                onError: () {
                                  print('Error');
                                },
                                onCancel: () {
                                  print('Cancel');
                                },
                                transactions: [],
                                clientId: null,
                                secretKey: null),
                          ),
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
}
