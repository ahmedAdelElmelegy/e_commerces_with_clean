import 'package:fashions/core/widgets/custom_loading_indicator.dart';
import 'package:fashions/features/home/presentation/manager/category_controller.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCategoryListView extends StatelessWidget {
  CustomCategoryListView({super.key});
  CategoryController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const CustomLoadingIndicator();
      } else if (controller.category.isNotEmpty) {
        return Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => CustomCategoryWidget(
              categoryData: controller.category[index],
            ),
            itemCount: controller.category.length,
          ),
        );
      } else {
        return const Text('The Category is empty');
      }
    });
  }
}
