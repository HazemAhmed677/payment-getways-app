import 'package:dartz/dartz.dart';
import 'package:payment_getways_app/core/errors/failure_service.dart';
import 'package:payment_getways_app/features/checkout/data/models/payment_input_intent_model.dart';

abstract class CheckoutRepo {
  Future<Either<FailureService, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
