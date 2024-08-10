import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomCheckAvatar extends StatelessWidget {
  const CustomCheckAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xffEDEDED),
      radius: 50,
      child: CircleAvatar(
        backgroundColor: AppColors.n34,
        radius: 40,
        child: const Icon(
          Icons.check,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
