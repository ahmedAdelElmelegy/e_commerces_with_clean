import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class CustomOr extends StatelessWidget {
  const CustomOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomDivider(),
        horizontalSpacing(0.05, context),
        Text(
          'Or',
          style: MyTextStyle.f13boldgrey(context),
        ),
        horizontalSpacing(0.05, context),
        const CustomDivider(),
      ],
    );
  }
}
