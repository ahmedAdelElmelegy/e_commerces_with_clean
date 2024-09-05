import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/features/home/data/data_source/home_local_data_source.dart';
import 'package:fashions/features/home/data/data_source/home_remote_data_source.dart';
import 'package:fashions/features/home/domain/Repo/home_repo.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';
import 'package:hive/hive.dart';

class HomeRepoImp extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImp(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BannerEntity>>> feachbanners() async {
    try {
      List<BannerEntity> banners;
      banners = homeLocalDataSource.feachbanners();
      if (banners.isNotEmpty) {
        return right(banners);
      }
      banners = await homeRemoteDataSource.feachbanners();
      return right(banners);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> feachCategorys() async {
    try {
      List<CategoryEntity> categoryList;
      categoryList = homeLocalDataSource.featchCategorys();
      if (categoryList.isNotEmpty) {
        return right(categoryList);
      }
      categoryList = await homeRemoteDataSource.feachCategorys();
      return right(categoryList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchProdcuts() async {
    try {
      List<ProductEntity> productList;
      productList = homeLocalDataSource.fetchProducts();
      if (productList.isNotEmpty) {
        return right(productList);
      }
      productList = await homeRemoteDataSource.fetchProducts();
      return right(productList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
