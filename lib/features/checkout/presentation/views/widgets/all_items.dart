import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/item.dart';

class AllItems extends StatelessWidget {
  const AllItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Item(
          text: 'Order Subtotal',
          price: 42.97,
        ),
        SizedBox(
          height: 3,
        ),
        Item(
          text: 'Discount',
          price: 0,
        ),
        SizedBox(
          height: 3,
        ),
        Item(
          text: 'Shipping ',
          price: 8,
        ),
        SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
