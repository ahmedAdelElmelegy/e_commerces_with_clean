import 'package:dartz/dartz.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BannerEntity>>> feachbanners();
  Future<Either<Failure, List<CategoryEntity>>> feachCategorys();
  Future<Either<Failure, List<ProductEntity>>> fetchProdcuts();
}
