import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/widgets/svg_icon.dart';
import 'package:fashions/features/home/presentation/manager/small_image_change_contrller.dart';
import 'package:fashions/features/home/presentation/view/widgets/Selected_sm_product.dart';
import 'package:flutter/material.dart';

class CustomSmImages extends StatelessWidget {
  const CustomSmImages({
    super.key,
    required this.smImage,
    required this.controller,
  });

  final List smImage;
  final SmallImageChangeController controller;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicWidth(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    smImage.length,
                    (index) => InkWell(
                        onTap: () {
                          controller.onImageChange(index, smImage[index]);
                        },
                        child: SelectedSmProduct(
                          image: smImage[index],
                          isActive: controller.currentIndex == index,
                        )),
                  )),
            ),
            const Spacer(),
         const   SizedBox(
              height: 20,
              width: 20,
              child: const SvgIcon(
                icon: Assets.imagesFavoite,
                isCart: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
