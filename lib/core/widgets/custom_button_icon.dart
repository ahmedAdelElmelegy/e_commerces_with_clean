import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:flutter/material.dart';

class CustomButtonIcon extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double? width;
  final IconData? icon;
  const CustomButtonIcon(
      {super.key, this.onPressed, required this.text, this.width, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.blackColor,
          minimumSize: Size(width ?? double.infinity, 50),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        label: Text(
          text,
          style: MyTextStyle.f15boldwhite(context),
        ));
  }
}
