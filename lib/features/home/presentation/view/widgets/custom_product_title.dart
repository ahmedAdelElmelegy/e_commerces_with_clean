import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_increment_count.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_star_icon.dart';
import 'package:flutter/material.dart';

class CustomProductTitles extends StatelessWidget {
  const CustomProductTitles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacing(0.02, context),
            Text(
              'Roller Rabbit',
              style: MyTextStyle.f20boldblack(context),
            ),
            verticalSpacing(0.01, context),
            Text(
              'Clean 90 Triple Sneakers',
              style: MyTextStyle.f13boldgrey(context),
            ),
            Row(
              children: [
                const CustomStarIcon(),
                horizontalSpacing(0.01, context),
                Text(
                  '(320 Review)',
                  style: MyTextStyle.f13boldgrey(context),
                )
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpacing(0.02, context),
            const CustomIncrementCount(),
            verticalSpacing(0.02, context),
            Text(
              'Avaliable in stak',
              style: MyTextStyle.f15boldblack(context),
            ),
          ],
        ),
      ],
    );
  }
}
