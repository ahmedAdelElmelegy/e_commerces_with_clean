import 'package:fashions/features/home/domain/entities/products/product_entity.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_product_description.dart';
import 'package:fashions/features/home/presentation/view/widgets/custom_product_images.dart';
import 'package:flutter/material.dart';

class ProductDetailes extends StatelessWidget {
  const ProductDetailes({super.key, this.productdetailes});
  final ProductEntity? productdetailes;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      body: CustomProductImages(
        size: size,
        image: productdetailes?.productImage ?? '',
        smImage: productdetailes?.productSmImage ?? [],
      ),
      bottomSheet: const CustomProductDescription(),
    ));
  }
}
