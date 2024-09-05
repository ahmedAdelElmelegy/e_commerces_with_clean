import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/core/widgets/custom_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'custom_product_title.dart';

class CustomProductDescription extends StatelessWidget {
  const CustomProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.8),
              blurRadius: 8,
              spreadRadius: 1),
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacing(0.01, context),
            const CustomProductTitles(),
            verticalSpacing(0.05, context),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: MyTextStyle.f18boldblack(context),
                ),
                verticalSpacing(0.01, context),
                Text(
                  'Clean 90 Triple SneakersClean 90 Triple SneakersClean 90 Triple SneakersClean 90 Triple SneakersClean 90 Triple SneakersClean 90 Triple SneakersClean 90 Triple ' *
                      5,
                  maxLines: 3,
                  style: MyTextStyle.f11sboldgrey(context),
                ),
                verticalSpacing(.02, context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '\$198.00',
                      style: MyTextStyle.f18boldblack(context),
                    ),
                    CustomButtonIcon(
                      icon: IconlyLight.bag2,
                      text: 'Add to Cart',
                      width: size.width * .5,
                      onPressed: () {},
                    ),
                  ],
                ),
                verticalSpacing(0.01, context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
