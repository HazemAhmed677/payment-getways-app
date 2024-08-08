import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/app_images.dart';
import 'package:payment_getways_app/core/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar({
  required String text,
  Function()? onTap,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Center(
        child: SvgPicture.asset(
          Assets.imagesBack,
        ),
      ),
    ),
    title: Text(
      text,
      style: AppStyles.medium25,
    ),
    centerTitle: true,
  );
}
