import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/shared/constant/assets_pathes.dart';
import '../../widgets/custom_image_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AssetsPathes.splashBackgroundImage))),
        child: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: AssetsPathes.appLogoImage,
            height: 142.h,
            width: 134.w,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
