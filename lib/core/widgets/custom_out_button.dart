import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOutButton extends StatelessWidget {
  const CustomOutButton({
    super.key,
    required this.size,
    required this.text,
    this.onPressed,
    this.isLogin,
    this.icon,
  });
  final bool? isLogin;
  final Size size;
  final String text;
  final String? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return isLogin == true
        ? OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColor.blackColor, width: 1),
                minimumSize: Size(size.width, 50),
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: onPressed,
            child: Row(
              children: [
                SvgPicture.asset(
                  icon!,
                ),
                horizontalSpacing(0.03, context),
                Text(text),
              ],
            ))
        : OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColor.whiteColor, width: 1),
              minimumSize: Size(size.width, 50),
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: onPressed,
            child: Text(text, style: MyTextStyle.f18boldwhite(context)));
  }
}
