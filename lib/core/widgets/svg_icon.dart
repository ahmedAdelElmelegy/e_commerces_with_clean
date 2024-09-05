import 'package:fashions/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  final String icon;
  const SvgIcon(
      {super.key,
      required this.icon,
      this.isCart = false,
      this.isRectangle = false});
  final bool? isCart;
  final bool? isRectangle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: isCart == false ? AppColor.blackColor : Colors.white,
          borderRadius: BorderRadius.circular(isRectangle == false ? 50 : 10),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 1,
              color: Colors.grey.withOpacity(.5),
            ),
          ]),
      child: SvgPicture.asset(
        height: 20,
        width: 15,
        color: isCart == false ? Colors.white : Colors.black,
        icon,
      ),
    );
  }
}
