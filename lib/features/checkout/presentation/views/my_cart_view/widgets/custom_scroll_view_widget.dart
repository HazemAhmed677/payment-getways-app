import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/all_items.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/custom_app_bar.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/my_cart_view/widgets/pay_button.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
          ),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Image.asset(
                Assets.imagesMycart,
                height: 424,
                width: 277,
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: AllItems(),
        ),
        const SliverToBoxAdapter(
          child: Divider(
            indent: 15,
            endIndent: 15,
            height: 30,
            thickness: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: AppStyles.semiBold24,
              ),
              Text(
                r'$50.97',
                style: AppStyles.semiBold24,
              ),
            ],
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 12,
          ),
          sliver: SliverToBoxAdapter(
            child: PayButton(),
          ),
        )
      ],
    );
  }
}
