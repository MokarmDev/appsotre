import 'package:appstore/constants/app_colors.dart';
import 'package:appstore/screens/auth/widgets/custom_body.dart';
import 'package:appstore/screens/auth/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomBody(
      title: "Sign In",
      desc: "Enter your emails and password",
      checkAccount: "Don’t have an account? Sing Up",
      child: Column(children: [
        const CustomTextField(
          label: 'Email',
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          label: 'Password',
          icon: const Icon(Icons.visibility),
          onPressed: () {},
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: const Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {},
          ),
        )
      ]),
    );
  }
}
