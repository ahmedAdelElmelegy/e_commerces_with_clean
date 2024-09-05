import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class CheckOutBtn extends StatelessWidget {
  const CheckOutBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Proceed to Checkout',
            style: MyTextStyle.f18boldwhite(context),
          ),
          const RotatedBox(
              quarterTurns: 90,
              child: SvgIcon(
                icon: Assets.imagesArrowIconsvg,
                isCart: true,
                isRectangle: true,
              ))
        ],
      ),
    );
  }
}
