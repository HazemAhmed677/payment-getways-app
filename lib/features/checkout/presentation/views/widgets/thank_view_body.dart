import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_getways_app/features/checkout/presentation/views/widgets/custom_check_avatar.dart';
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
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 22.0,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: -40,
                child: CustomCheckAvatar(),
              ),
              ThankYouElements(),
            ],
          ),
        ),
      ),
    );
  }
}
