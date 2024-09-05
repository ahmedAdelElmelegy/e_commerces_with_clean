import 'package:fashions/core/style/app_color.dart';
import 'package:flutter/material.dart';

class SelectedonBordingItem extends StatelessWidget {
  const SelectedonBordingItem({
    super.key,
    required this.persentage,
  });
  final double persentage;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
          height: 7,
          width: size.width * persentage,
          decoration: BoxDecoration(
            color:
                persentage == .1 ? AppColor.blackColor : AppColor.subtitleColor,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
