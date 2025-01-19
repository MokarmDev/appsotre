import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color backgroundColor;
  final Color? textColor;
  final String? image;

  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.backgroundColor,
      this.textColor,
      this.image = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 67,
        width: 353,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(19))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image!.isNotEmpty ? Image.asset(image!) : const SizedBox(),
              Visibility(
                visible: image!.isNotEmpty,
                child: const SizedBox(
                  width: 40,
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
