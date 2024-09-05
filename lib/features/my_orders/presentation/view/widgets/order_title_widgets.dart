import 'package:fashions/core/style/my_text_style.dart';
import 'package:flutter/material.dart';

class OrderTitleWidgets extends StatelessWidget {
  const OrderTitleWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
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
                  'PHW Rosie ' * 10,
                  style: MyTextStyle.f13boldgrey(context),
                ),
                Text(
                  maxLines: 1,
                  'Quality:1',
                  style: MyTextStyle.f13boldgrey(context),
                ),
              ],
            ),
          ),
          Text(
            '\$198.00',
            style: MyTextStyle.f18boldblack(context),
          ),
        ],
      ),
    );
  }
}
