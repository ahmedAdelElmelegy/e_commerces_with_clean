import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/core/utils/set_up_server_locator.dart';
import 'package:fashions/features/Splash/presentation/view/splash_view.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BannerEntityAdapter());
  Hive.registerAdapter(CategoryEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<BannerEntity>(Constants.kbanner);
  await Hive.openBox<ProductEntity>(Constants.kproducts);
  await Hive.openBox<CategoryEntity>(Constants.kcategory);
  runApp(const Fashions());

  setupServesLocator();
}

class Fashions extends StatelessWidget {
  const Fashions({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
