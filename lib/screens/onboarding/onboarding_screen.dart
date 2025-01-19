import 'dart:developer';

import 'package:appstore/common/custom_button.dart';
import 'package:appstore/constants/app_colors.dart';
import 'package:appstore/constants/app_images.dart';
import 'package:appstore/screens/auth/views/sign_up.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppImages.onBoardingBackground),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              AppImages.logoIconImage,
              height: 46,
              width: 56,
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Welcome \nto our store",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              "Ger your groceries in as fast as one hour",
              style: TextStyle(
                  color: Color(0xffE5E5E5),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 48,
            ),
            CustomButton(
              text: "Get Started",
              backgroundColor: AppColors.primaryColor,
              onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  )),
                 
            ),
            const SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
