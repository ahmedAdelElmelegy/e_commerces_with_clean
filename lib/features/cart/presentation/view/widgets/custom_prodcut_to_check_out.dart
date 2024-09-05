import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/cart/presentation/view/widgets/check_out_btn.dart';
import 'package:flutter/material.dart';

class CustomProductToCheckout extends StatelessWidget {
  const CustomProductToCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total(3 items)',
                style: MyTextStyle.f15boldgrey(context),
              ),
              Text(
                '\$500',
                style: MyTextStyle.f18boldblack(context),
              ),
            ],
          ),
          verticalSpacing(0.02, context),
          const CheckOutBtn()
        ],
      ),
    );
  }
}
