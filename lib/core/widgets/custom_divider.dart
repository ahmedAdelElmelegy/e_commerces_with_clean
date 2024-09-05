import 'package:fashions/core/style/app_color.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppColor.subtitleColor,
      width: MediaQuery.sizeOf(context).width * .35,
    );
  }
}
