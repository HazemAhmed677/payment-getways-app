import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyCartViewBody(),
    );
  }
}
