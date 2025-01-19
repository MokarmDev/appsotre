
import 'package:appstore/common/custom_background.dart';
import 'package:appstore/common/custom_button.dart';
import 'package:appstore/constants/app_colors.dart';
import 'package:appstore/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBody extends StatelessWidget {

  final Widget child;
  const CustomBody({super.key, required this.child});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 80.0, top: 90),
                  child: Center(
                    child: SvgPicture.asset(
                      AppImages.logoSvg,
                      semanticsLabel: 'Logo',
                    ),
                  ),
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),


                /// form
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: child,
                ),

                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Sign Up",
                  onTap: () {},
                  backgroundColor: AppColors.primaryColor,
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "Already have an account ?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        )),
                  ])),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
