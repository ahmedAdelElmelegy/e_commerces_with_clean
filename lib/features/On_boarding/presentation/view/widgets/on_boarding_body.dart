import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/features/On_boarding/presentation/manager/on_boarding_controller.dart';
import 'package:fashions/features/On_boarding/presentation/view/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});
  OnBoardingController controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
        init: OnBoardingController(),
        builder: (controller) {
          return PageView.builder(
            controller: controller.pageController,
            itemCount: Constants.onboarding.length,
            onPageChanged: (value) {
              controller.getSplashReviewIndex(value);
            },
            itemBuilder: (context, index) => OnBoardingWidget(
              currentIndex: controller.currentIndex,
              totalItems: Constants.onboarding.length,
              onBoardingModel: Constants.onboarding[index],
              isActive: controller.currentIndex.round() == index,
            ),
          );
        });
  }
}
