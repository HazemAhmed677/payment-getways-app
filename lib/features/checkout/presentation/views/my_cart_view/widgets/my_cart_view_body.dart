import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/custom_scroll_view_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20,
          top: 25,
          bottom: 12,
        ),
        child: CustomScrollViewWidget(),
      ),
    );
  }
}
