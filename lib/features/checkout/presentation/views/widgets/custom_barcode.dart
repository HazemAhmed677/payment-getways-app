import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_getways_app/core/utils/app_colors.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';

class CustomBarcode extends StatelessWidget {
  const CustomBarcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.barcode,
          size: 70,
        ),
        const Spacer(),
        Container(
          width: 113,
          height: 58,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: AppColors.n34,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'PAID',
              style: AppStyles.semiBold24.copyWith(
                color: AppColors.n34,
              ),
            ),
          ),
        )
      ],
    );
  }
}
