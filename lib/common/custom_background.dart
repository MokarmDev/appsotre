
import 'package:appstore/constants/app_images.dart';
import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {

  final Widget child;

  const CustomBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.customBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
    );
  }
}

