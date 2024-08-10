import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_check_avatar.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_decorate_circle.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_master_card_container.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/dashed_line.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/thank_you_elements.dart';

class ThankViewBody extends StatelessWidget {
  const ThankViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 24,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffEDEDED),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22.0,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Positioned(
                left: 0,
                right: 0,
                top: -40,
                child: CustomCheckAvatar(),
              ),
              const ThankYouElements(),
              Positioned(
                left: -22 - 17.5,
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                child: const CustomDecorateCircle(),
              ),
              Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                right: -22 - 17.5,
                child: const CustomDecorateCircle(),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: MediaQuery.sizeOf(context).height * 0.2 + 38,
                  child: const CustomMasterCard()),
              Positioned(
                left: 0,
                right: 0,
                bottom: MediaQuery.sizeOf(context).height * 0.2 + 17.5,
                child: const DashedLine(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
