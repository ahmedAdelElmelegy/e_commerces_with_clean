import 'package:fashions/core/style/app_color.dart';
import 'package:flutter/material.dart';

class CustomBorderContainer extends StatelessWidget {
  const CustomBorderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColor.transperantColor,
          )),
      child: child
    );
  }
}