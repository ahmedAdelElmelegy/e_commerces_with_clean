import 'package:fashions/core/style/app_color.dart';
import 'package:flutter/material.dart';

abstract class MyTextStyle {
  // 20
  static TextStyle f20sboldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 20, context: context));
  static TextStyle f20boldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 20, context: context));
  // 18
  static TextStyle f18sboldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 18, context: context));
  static TextStyle f18boldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 18, context: context));
  static TextStyle f18boldred(BuildContext context) => TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 18, context: context));
  static TextStyle f18boldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 18, context: context));
  static TextStyle f18sboldwhite(BuildContext context) => TextStyle(
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 18, context: context));
  static TextStyle f18boldwhite(BuildContext context) => TextStyle(
      color: AppColor.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 18, context: context));

// 16
  static TextStyle f16sboldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 16, context: context));
  static TextStyle f16boldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 16, context: context));
  static TextStyle f16sboldwhite(BuildContext context) => TextStyle(
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 16, context: context));
  static TextStyle f16boldwhite(BuildContext context) => TextStyle(
      color: AppColor.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 16, context: context));
  static TextStyle f16sboldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 16, context: context));
  static TextStyle f16boldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 16, context: context));
  // 28

  static TextStyle f28sboldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 28, context: context));
  static TextStyle f28boldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 28, context: context));
  // 13
  static TextStyle f13sboldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 13, context: context));
  static TextStyle f13boldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 13, context: context));
  static TextStyle f13boldwhite(BuildContext context) => TextStyle(
      color: AppColor.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 13, context: context));
  // 11
  static TextStyle f11sboldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 11, context: context));
  // 15
  static TextStyle f15sboldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 15, context: context));
  static TextStyle f15boldgrey(BuildContext context) => TextStyle(
      color: AppColor.subtitleColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 15, context: context));
  static TextStyle f15boldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 15, context: context));
  static TextStyle f15boldwhite(BuildContext context) => TextStyle(
      color: AppColor.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 15, context: context));

// 24

  static TextStyle f24sboldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(fontSize: 24, context: context));
  static TextStyle f24boldblack(BuildContext context) => TextStyle(
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveFontSize(fontSize: 24, context: context));
}

double getResponsiveFontSize({
  required double fontSize,
  required BuildContext context,
  double lowerFactor = 0.8,
  double upperFactor = 1.2,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;

  // Define lower and upper limits
  double lowerLimit = fontSize * lowerFactor;
  double upperLimit = fontSize * upperFactor;

  // Clamp the responsive font size between the lower and upper limits
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    // Small mobile devices
    return width / 360; // Scale based on a typical small phone width
  } else if (width < 800) {
    // Larger mobile devices (e.g., phablets)
    return width / 480; // Scale based on a larger phone or small tablet
  } else if (width < 1200) {
    // Tablets and small desktops
    return width / 700; // Scale based on small tablet width
  } else {
    return width / 1000; // Larger screens
  }
}
