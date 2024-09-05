import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/home/presentation/view/widgets/product_detailes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        Get.to(const ProductDetailes());
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.2),
                blurRadius: 8,
                spreadRadius: 1),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              Assets.imagesProduct,
              width: size.width * .17,
            ),
            horizontalSpacing(0.03, context),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * .42,
                  child: Text(
                    'Gia Borg Gia Borg ' * 10,
                    maxLines: 1,
                    style: MyTextStyle.f18boldblack(context),
                  ),
                ),
                SizedBox(
                  width: size.width * .42,
                  child: Text(
                    maxLines: 1,
                    'PHW Rosie 1 Sandals',
                    style: MyTextStyle.f13boldgrey(context),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 24,
                    ),
                    horizontalSpacing(0.01, context),
                    Text(
                      '(4.5)',
                      style: MyTextStyle.f11sboldgrey(context),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              '\$198.00',
              style: MyTextStyle.f18boldblack(context),
            )
          ],
        ),
      ),
    );
  }
}
