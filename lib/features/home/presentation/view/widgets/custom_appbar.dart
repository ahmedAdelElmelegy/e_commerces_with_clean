import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SvgIcon(icon: Assets.imagesMenu),
        SvgPicture.asset(
          Assets.imagesSearch,
          width: 35,
        ),
      ],
    );
  }
}
