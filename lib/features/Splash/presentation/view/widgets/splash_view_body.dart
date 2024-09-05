import 'package:fashions/core/style/assets.dart';
import 'package:fashions/features/On_boarding/presentation/view/on_boarding.dart';
import 'package:fashions/features/home/presentation/bindings/home_bindings.dart';
import 'package:fashions/features/home/presentation/view/home_view.dart';
import 'package:fashions/features/main_screen/presentation/view/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      String? token = sharedPreferences.getString('token');

      if (token == null || token.isEmpty) {
        Get.off(() => const OnBoarding());
      } else {
        Get.off(() => MainView(), binding: HomeBindings());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              Assets.imagesSplashScreen,
            ),
            fit: BoxFit.fill),
      ),
      child: Center(
        child: SvgPicture.asset(Assets.imagesLogo),
      ),
    );
  }
}
