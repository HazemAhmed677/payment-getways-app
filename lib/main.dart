import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getways_app/constants.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = kPublishableKey;
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Intern',
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCartView(),
    );
  }
}

// Traditional pattern 
// PaymentIntentModel createPaymentIntent(amount, currency) 
// initPaymetnSheet(SetupPaymentSheetParameters parameters)
// presentPaymentSheet()
// ----------------------------------------------------------------------------
// For saving a card pattern 
// PaymentIntentModel  createPaymentIntent(amount, currency, customerId)
// keySecret  createEhemralKey(stripeVersion, customerId)
// initPaymetnSheet(merchantDisplayName, intentClientSecret, ephemeralkey)
// presentPaymentSheet()