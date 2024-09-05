import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({super.key, this.isActive = false});
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(10),
      margin:const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isActive == true ? Colors.black : AppColor.incrementColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            isActive == true
                ? Icons.radio_button_checked
                : Icons.radio_button_unchecked,
            color: isActive == true ? Colors.white : Colors.black,
          ),
          horizontalSpacing(0.01, context),
          Text(
            'Male',
            style: isActive == true
                ? MyTextStyle.f15boldwhite(context)
                : MyTextStyle.f15boldblack(context),
          ),
        ],
      ),
    );
  }
}
