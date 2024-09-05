import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';
import 'package:hive/hive.dart';

void storelocalbanner(List<BannerEntity> banners, String key) {
  var box = Hive.box<BannerEntity>(key);
  
  box.clear();
  for (var banner in banners) {
    box.add(banner); 
  }
}
  void storelocalCategory(List<CategoryEntity> categoryList) {
     var box = Hive.box<CategoryEntity>(Constants.kcategory);
    
    box.clear();
    for (var element in categoryList) {
      box.add(element);
    }
  }
    void storelocalProduct(List<ProductEntity> productList) {
     var box = Hive.box<ProductEntity>(Constants.kproducts);
    
    box.clear();
    for (var element in productList) {
      box.add(element);
    }
  }