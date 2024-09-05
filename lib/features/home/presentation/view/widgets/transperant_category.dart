import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:flutter/material.dart';

class TransperantCategory extends StatelessWidget {
  const TransperantCategory({super.key, required this.catName});
  final String catName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
      padding: const EdgeInsets.all(10),
      height: size.height * .1,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.transperantColor.withOpacity(.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            catName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: MyTextStyle.f18boldblack(context),
          ),
          Text(
            '200 Product',
            style: MyTextStyle.f15boldblack(context),
          )
        ],
      ),
    );
  }
}
