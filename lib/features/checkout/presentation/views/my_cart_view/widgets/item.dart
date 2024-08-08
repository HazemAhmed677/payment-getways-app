import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.text, required this.price});
  final String text;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: AppStyles.regular18,
      ),
      Row(
        children: [
          Text(
            r'$',
            style: AppStyles.regular18,
          ),
          Text(
            '$price',
            style: AppStyles.regular18,
          ),
        ],
      ),
    ]);
  }
}
