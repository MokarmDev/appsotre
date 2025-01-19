import 'package:appstore/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final Widget? icon;
  const CustomTextField(
      {super.key, required this.label, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: AppColors.grey,
        ),
        suffixIcon: IconButton(
          icon: icon ?? const SizedBox(),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
