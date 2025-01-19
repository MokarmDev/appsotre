import 'package:appstore/common/custom_background.dart';
import 'package:appstore/common/custom_button.dart';
import 'package:appstore/constants/app_colors.dart';
import 'package:appstore/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBody extends StatelessWidget {
  final Widget child;
  final String title;
  final String desc;
  final String checkAccount;
  const CustomBody(
      {super.key,
      required this.child,
      required this.title,
      required this.desc,
      required this.checkAccount});

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
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  desc,
                  style: const TextStyle(
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
                  text: title,
                  onTap: () {},
                  backgroundColor: AppColors.primaryColor,
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: checkAccount,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: title,
                        style: const TextStyle(
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
