import 'package:fashions/core/style/assets.dart';
import 'package:fashions/core/utils/spacer.dart';
import 'package:fashions/features/cart/presentation/view/widgets/product_cart_title.dart';
import 'package:fashions/features/home/presentation/view/widgets/product_detailes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

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
            ProductImageCart(),
            horizontalSpacing(0.05, context),
            const ProductCartTitle(),
          ],
        ),
      ),
    );
  }
}

class ProductImageCart extends StatelessWidget {
  const ProductImageCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.centerRight,
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.orange.withOpacity(.8),
          child: CircleAvatar(
            radius: 37,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.orange.withOpacity(.5),
            ),
          ),
        ),
        Positioned(
          right: -15,
          child: Image.asset(
            Assets.imagesShoes2,
            width: size.width * .2,
          ),
        )
      ],
    );
  }
}
