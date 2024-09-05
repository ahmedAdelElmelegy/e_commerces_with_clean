import 'package:fashions/features/On_boarding/presentation/view/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingBody(),
      ),
    );
  }
}
