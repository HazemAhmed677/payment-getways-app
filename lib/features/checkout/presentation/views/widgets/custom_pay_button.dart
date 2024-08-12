import 'package:flutter/material.dart';

class CustomPayButton extends StatelessWidget {
  const CustomPayButton({super.key, this.onPressed, required this.widget});
  final VoidCallback? onPressed;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          backgroundColor: const Color(0xff34A853),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 23.0,
          ),
          child: widget,
        ),
      ),
    );
  }
}
