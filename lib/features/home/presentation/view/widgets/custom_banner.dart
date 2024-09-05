import 'package:card_swiper/card_swiper.dart';
import 'package:fashions/features/home/presentation/manager/banner_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBanner extends StatelessWidget {
  CustomBanner({
    super.key,
    required this.size,
  });

  final Size size;
  BannerController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SizedBox(
          width: double.infinity,
          height: size.height * .23,
          child: Obx(() {
            if (controller.isLoading.value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (controller.banners.isNotEmpty) {
              return Swiper(
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      fit: BoxFit.fill,
                      controller.banners[index].image ?? '',
                    ),
                  );
                },
                itemCount: controller.banners.length,
              );
            } else {
              return const Center(child: Text("No banners available"));
            }
          }));
    });
  }
}
