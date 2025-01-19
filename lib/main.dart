import 'package:appstore/constants/app_colors.dart';
import 'package:appstore/screens/auth/views/sign_in.dart';
import 'package:appstore/screens/auth/views/sign_up.dart';
import 'package:appstore/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}
