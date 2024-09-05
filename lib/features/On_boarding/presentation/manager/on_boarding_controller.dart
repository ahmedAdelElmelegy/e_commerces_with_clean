import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/features/Auth/presentation/view/Auth_Review/presentation/view/auth_review_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  PageController pageController = PageController();

  var currentIndex = 0;
  void getSplashReviewIndex(int index) {
    currentIndex = index;

    update();
  }

  void nextSpashReview() {
    if (currentIndex < Constants.onboarding.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.off( const AuthReviewView());
    }
  }
}
