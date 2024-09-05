import 'package:fashions/core/style/assets.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/presentation/view/category_products.dart';

import 'package:fashions/features/home/presentation/view/widgets/transperant_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({super.key, required this.categoryData});
  final CategoryEntity categoryData;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        Get.to(const CategoryProducts());
      },
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                fit: BoxFit.fill,
                categoryData.categoryImage,
              ),
            ),
          ),
          TransperantCategory(
            catName: categoryData.categoryTitle,
          ),
        ],
      ),
    );
  }
}
