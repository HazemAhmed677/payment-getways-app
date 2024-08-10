import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_app_bar.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/thank_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: const ThankViewBody(),
    );
  }
}
