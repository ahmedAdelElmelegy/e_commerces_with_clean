import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_increment_count.dart';
import 'package:flutter/material.dart';

class ProductCartTitle extends StatelessWidget {
  const ProductCartTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gia Borg ',
            maxLines: 1,
            style: MyTextStyle.f18boldblack(context),
          ),
          Text(
            maxLines: 1,
            'PHW Rosie 1 Sandals',
            style: MyTextStyle.f13boldgrey(context),
          ),
          verticalSpacing(0.02, context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$198.00',
                style: MyTextStyle.f18boldblack(context),
              ),
              const CustomIncrementCount(),
            ],
          )
        ],
      ),
    );
  }
}
