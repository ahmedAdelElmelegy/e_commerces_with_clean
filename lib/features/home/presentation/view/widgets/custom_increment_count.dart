import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:flutter/material.dart';

class CustomIncrementCount extends StatelessWidget {
  const CustomIncrementCount({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColor.incrementColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            splashColor: Colors.red,
            onTap: () {},
            child: const Icon(
              Icons.add,
              size: 20,
            ),
          ),
          horizontalSpacing(0.02, context),
          Text(
            '1',
            style: MyTextStyle.f18boldblack(context),
          ),
          horizontalSpacing(0.02, context),
          InkWell(
            splashColor: Colors.red,
            onTap: () {},
            child: const Icon(
              Icons.remove,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
