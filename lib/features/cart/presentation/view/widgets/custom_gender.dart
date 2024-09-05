import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/Personal_Detailes/presentation/view/widgets/Gender_sellection_list_view.dart';
import 'package:flutter/material.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Gender',
          style: MyTextStyle.f18boldgrey(context),
        ),
        horizontalSpacing(.15, context),
        const GenderSellectionListView(),
      ],
    );
  }
}
