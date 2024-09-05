import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppBarAllCategory extends StatelessWidget {
  const AppBarAllCategory({
    super.key,
    this.icon,
  });
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              Get.back();
            },
            child: const SvgIcon(icon: Assets.imagesArrowIconsvg)),
        icon == null
            ? SvgPicture.asset(
                Assets.imagesSearch,
                height: 35,
              )
            : const SvgIcon(
                icon: Assets.imagesCartIcon,
                isCart: true,
              ),
      ],
    );
  }
}
