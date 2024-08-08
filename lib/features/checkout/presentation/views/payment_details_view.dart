import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_app_bar.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/payment_details_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        text: 'Payment Details',
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: const PaymentDetailsBody(),
    );
  }
}
