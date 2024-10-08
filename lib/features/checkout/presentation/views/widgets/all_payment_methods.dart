import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_payment_method.dart';

class AllPaymentsMethods extends StatefulWidget {
  const AllPaymentsMethods({super.key});

  @override
  State<AllPaymentsMethods> createState() => _AllPaymentsMethodsState();
}

class _AllPaymentsMethodsState extends State<AllPaymentsMethods> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            index = 0;
            setState(() {});
          },
          child: CustomPaymentMethod(
            isActive: index == 0,
            image: Assets.imagesStripe,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            index = 1;
            setState(() {});
          },
          child: CustomPaymentMethod(
            isActive: index == 1,
            image: Assets.imagesPaypal,
          ),
        ),
      ],
    );
  }
}
