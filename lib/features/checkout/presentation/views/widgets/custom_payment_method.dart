import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_colors.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({
    super.key,
    required this.isActive,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 200,
      ),
      height: 68,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 3,
          color: (isActive) ? AppColors.n34 : Colors.grey,
        ),
        boxShadow: (isActive)
            ? [
                BoxShadow(
                  blurRadius: 1,
                  color: (isActive) ? Colors.green : Colors.transparent,
                )
              ]
            : null,
      ),
      child: Container(
        height: 64,
        width: 106,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12,
            ),
            color: Colors.white),
        child: Center(
          child: SvgPicture.asset(
            image,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
