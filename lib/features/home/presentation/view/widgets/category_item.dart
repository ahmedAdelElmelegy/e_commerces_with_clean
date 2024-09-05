import 'package:fashions/core/style/assets.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoyData});
  final CategoryEntity categoyData;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: const Border(
              top: BorderSide(width: 1, color: Colors.black),
              bottom: BorderSide(width: 4, color: Colors.black),
              right: BorderSide(width: 3, color: Colors.black),
              left: BorderSide(width: 3, color: Colors.black))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          categoyData.categoryImage,
          width: size.width * .2,
          height: size.height * .08,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
