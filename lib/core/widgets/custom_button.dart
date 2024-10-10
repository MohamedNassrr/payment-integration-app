import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 73,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff34A853),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: const Text(
          'Complete Payment',
          style: Styles.style22,
        ),
      ),
    );
  }
}
