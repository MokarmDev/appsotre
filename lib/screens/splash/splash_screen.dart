import 'package:appstore/constants/app_colors.dart';
import 'package:appstore/constants/app_images.dart';
import 'package:appstore/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OnBoardingScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.logoIconImage),
                const Column(
                  children: [
                    Text(
                      "nectar",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        letterSpacing: 1.8,
                      ),
                    ),
                    Text(
                      "online groceriet",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
