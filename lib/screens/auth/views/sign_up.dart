import 'package:appstore/constants/app_colors.dart';
import 'package:appstore/screens/auth/widgets/custom_body.dart';
import 'package:appstore/screens/auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomBody(
      child: Column(children: [
        const CustomTextField(
          label: 'Uersname',
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomTextField(
          label: 'Email',
          icon: Icon(
            Icons.check,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          label: 'Password',
          icon: const Icon(Icons.visibility),
          onPressed: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: "By continuing you agree to our ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
              )),
          TextSpan(
              text: "Terms of Service and Privacy Policy.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              )),
        ])),
      ]),
    );
  }
}
