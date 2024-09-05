import 'package:fashions/core/style/assets.dart';
import 'package:fashions/features/Card/presentation/view/card_view.dart';
import 'package:fashions/features/On_boarding/data/on_boarding_model.dart';
import 'package:fashions/features/Personal_Detailes/presentation/view/personal_detailes_view.dart';
import 'package:fashions/features/my_favoite/presentation/view/my_favorite_view.dart';
import 'package:fashions/features/my_orders/presentation/view/my_order_view.dart';
import 'package:fashions/features/notifications/presentation/view/notification_view.dart';
import 'package:fashions/features/profile/data/profile_model.dart';
import 'package:fashions/features/settings/presentation/view/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

class Constants {
  static List<OnBoardingModel> onboarding = [
    OnBoardingModel(
        image: Assets.imagesOnBoarding1,
        title: '20% Discount New Arrival Product'),
    OnBoardingModel(
        image: Assets.imagesOnBoarding2,
        title: 'Take Advantage Of The Offer Shopping'),
    OnBoardingModel(
        image: Assets.imagesOnBoarding3,
        title: 'All Types Offers Within Your Reach'),
  ];
  static List<ProfileModel> profileData1 = [
    ProfileModel(icon: IconlyBold.user2, title: 'Personal Details', () {
      Get.to(const PersonalDetailesView());
    }),
    ProfileModel(icon: IconlyBold.bag2, title: 'My Order', () {
      Get.to(const MyOrderView());
    }),
    ProfileModel(icon: IconlyBold.heart, title: ' My Favorite', () {
      Get.to(const MyFavoriteView());
    }),
    ProfileModel(icon: Icons.local_shipping, title: 'Shipping Address', () {
      Get.to(const NotificationView());
    }),
    ProfileModel(icon: Icons.payment, title: 'My Card', () {
      Get.to(const CardView());
    }),
    ProfileModel(icon: Icons.settings, title: 'Settings', () {
      Get.to(const SettingsView());
    })
  ];
  static List<ProfileModel> profileData2 = [
    ProfileModel(icon: Icons.error, title: 'FaQs', () {
      Get.to(const SettingsView());
    }),
    ProfileModel(icon: Icons.verified_user, title: 'Privacy Policy', () {
      Get.to(const SettingsView());
    })
  ];

  static const failedmessage =
      'This credentials does not meet any of our records, please make sure you have entered the right credentials';

  static const kbanner = 'kbanner';
  static const kcategory = 'kcategory';
  static const kproducts = 'kproducts';
}
