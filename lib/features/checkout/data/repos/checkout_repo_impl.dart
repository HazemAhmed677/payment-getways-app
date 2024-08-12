import 'package:dartz/dartz.dart';
import 'package:payment_getways_app/core/errors/failure_service.dart';
import 'package:payment_getways_app/core/utils/stripe_service.dart';
import 'package:payment_getways_app/features/checkout/data/models/payment_input_intent_model.dart';
import 'package:payment_getways_app/features/checkout/data/repos/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  @override
  Future<Either<FailureService, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await StripeService().makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );
      return right(
        null,
      );
    } catch (e) {
      return left(
        FailureService(
          e.toString(),
        ),
      );
    }
  }
}
