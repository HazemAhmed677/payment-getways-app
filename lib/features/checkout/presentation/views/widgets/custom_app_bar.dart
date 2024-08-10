import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar({
  String? text,
  Function()? onTap,
}) {
  return AppBar(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    leading: Padding(
      padding: const EdgeInsets.only(
        left: 14,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(
          12,
        ),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 6,
          ),
          child: Center(
            child: SvgPicture.asset(
              Assets.imagesBack,
            ),
          ),
        ),
      ),
    ),
    title: (text != null)
        ? Text(
            text,
            style: AppStyles.medium25,
          )
        : const Text(''),
    centerTitle: true,
  );
}
