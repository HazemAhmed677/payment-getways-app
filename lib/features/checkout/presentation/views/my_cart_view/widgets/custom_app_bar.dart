import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'My Cart',
        style: AppStyles.medium25,
      ),
    );
  }
}
