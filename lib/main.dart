import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view.dart';

void main() {
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
