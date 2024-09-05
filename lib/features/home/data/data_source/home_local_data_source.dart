import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BannerEntity> feachbanners();
  List<CategoryEntity> featchCategorys();
  List<ProductEntity> fetchProducts();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BannerEntity> feachbanners() {
    var box = Hive.box<BannerEntity>(Constants.kbanner);
    var result = box.values.toList();
    return result;
  }

  @override
  List<CategoryEntity> featchCategorys() {
    var box = Hive.box<CategoryEntity>(Constants.kcategory);
    var result = box.values.toList();
    return result;
  }

  @override
  List<ProductEntity> fetchProducts() {
    var box = Hive.box<ProductEntity>(Constants.kproducts);
    var result = box.values.toList();
    return result;
  }
  @override
Future<void> storeLocalProduct(List<ProductEntity> products) async {
  var box = Hive.box<ProductEntity>(Constants.kproducts);

  // Store products in the local Hive box
  for (var product in products) {
    box.add(product);
  }
}

}
