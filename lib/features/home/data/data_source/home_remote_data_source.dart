import 'package:fashions/core/func/hive_helper.dart';
import 'package:fashions/core/utils/api_services.dart';
import 'package:fashions/core/utils/constants.dart';
import 'package:fashions/features/home/data/models/banner_model.dart';
import 'package:fashions/features/home/data/models/category_model.dart';
import 'package:fashions/features/home/data/models/product_model.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';


abstract class HomeRemoteDataSource {
  Future<List<BannerEntity>> feachbanners();
  Future<List<CategoryEntity>> feachCategorys();
  Future<List<ProductEntity>> fetchProducts();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImp({required this.apiServices});
  @override
  Future<List<BannerEntity>> feachbanners() async {
    List<BannerEntity> bannerList = [];
    Map<String, dynamic> data = await apiServices.get(endPoint: 'banners');
    for (var bannerMap in data['data']) {
      bannerList.add(BannerModel.fromJson(bannerMap));
    }
    List<BannerEntity> banners = bannerList;
    storelocalbanner(banners, Constants.kbanner);
    return banners;
  }

  @override
  Future<List<CategoryEntity>> feachCategorys() async {
    List<CategoryEntity> categoryList = [];
    Map<String, dynamic> data = await apiServices.get(endPoint: 'categories');
    for (var categoryMap in data['data']['data']) {
      categoryList.add(CategoryModel.fromJson(categoryMap));
    }
    List<CategoryEntity> category = categoryList;
    storelocalCategory(category);
    return category;
  }

  @override
  Future<List<ProductEntity>> fetchProducts() async {
    List<ProductEntity> productList = [];
    Map<String, dynamic> data = await apiServices.get(endPoint: 'products');
    for (var productMap in data['data']['data']) {
      productList.add(ProductModel.fromJson(productMap));
    }
    List<ProductEntity> products = productList;
    storelocalProduct(products);
    return products;
  }
}
