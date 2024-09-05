import 'package:fashions/core/style/assets.dart';
import 'package:fashions/features/home/presentation/manager/small_image_change_contrller.dart';
import 'package:fashions/features/home/presentation/view/widgets/app_bar_all_category.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_sm_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProductImages extends StatelessWidget {
  CustomProductImages({
    super.key,
    required this.size,
    required this.image,
    required this.smImage,
  });
  final String image;
  final Size size;
  final List<dynamic> smImage;
  SmallImageChangeController controller = Get.put(SmallImageChangeController());

  @override
  Widget build(BuildContext context) {
    controller.currenImage.value = image;
    return Obx(() {
      return Stack(clipBehavior: Clip.antiAliasWithSaveLayer, children: [
        Container(
          width: size.width,
          height: size.height * .6,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(controller.currenImage.value),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: AppBarAllCategory(
            icon: Assets.imagesCartIcon,
          ),
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 10,
          child: CustomSmImages(smImage: smImage, controller: controller),
        ),
      ]);
    });
  }
}

