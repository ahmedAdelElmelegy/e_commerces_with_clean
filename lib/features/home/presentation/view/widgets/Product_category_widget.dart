import 'package:fashions/core/style/app_color.dart';
import 'package:fashions/core/style/my_text_style.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';
import 'package:fashions/features/home/presentation/view/widgets/product_detailes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCategoryWidget extends StatelessWidget {
  const ProductCategoryWidget({super.key, this.products});
  final ProductEntity? products;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: size.width * .4,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 8,
                  spreadRadius: 1),
            ],
            border: Border.all(
              color: AppColor.transperantColor,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.grey,
                onTap: () {
                  Get.to(ProductDetailes(
                    productdetailes: products,
                  ));
                },
                child: Image.network(
                  products?.productImage ?? '',
                  fit: BoxFit.fill,
                  width: size.width * .4,
                  height: size.height * .17,
                ),
              ),
              Text(
                products?.productname ?? '',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: MyTextStyle.f18sboldblack(context),
              ),
              Text(
                products?.productDescription ?? '',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: MyTextStyle.f13boldgrey(context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '\$${products?.productPrice ?? ''}',
                        style: MyTextStyle.f15boldblack(context),
                      ),
                      Text(
                        '\$${products?.productOldPrice ?? ''}',
                        style: MyTextStyle.f13boldgrey(context)
                            .copyWith(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: () {},
                      splashColor: Colors.red,
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                          child: const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 24,
                            ),
                          )))
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color:
                products!.productInfavorite == false ? Colors.grey : Colors.red,
          ),
        ),
      ],
    );
  }
}
