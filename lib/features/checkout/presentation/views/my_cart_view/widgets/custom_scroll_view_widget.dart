import 'package:flutter/material.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/custom_app_bar.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        )
      ],
    );
  }
}
