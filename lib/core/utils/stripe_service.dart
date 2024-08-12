import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getways_app/constants.dart';
import 'package:payment_getways_app/core/utils/api_service.dart';
import 'package:payment_getways_app/features/checkout/data/models/payment_input_intent_model.dart';
import 'package:payment_getways_app/features/checkout/data/models/payment_intent_model/payment_intent.dart';

class StripeService {
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await ApiService().post(
        url: 'https://api.stripe.com/v1/payment_intents',
        body: {
          'amount': paymentIntentInputModel.amount,
          'currency': paymentIntentInputModel.currency,
        },
        token: kMyToken);
    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  initPaymentSheet({required String clientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'HZM',
        paymentIntentClientSecret: clientSecret,
      ),
    );
  }

  Future<void> presentPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(clientSecret: paymentIntentModel.clientSecret!);
    await presentPaymentSheet();
  }
}
