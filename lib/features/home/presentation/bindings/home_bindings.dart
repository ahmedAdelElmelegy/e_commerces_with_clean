import 'package:dio/dio.dart';
import 'package:fashions/core/utils/api_services.dart';
import 'package:fashions/core/utils/set_up_server_locator.dart';
import 'package:fashions/features/home/data/Repo_imp/home_repo_imp.dart';
import 'package:fashions/features/home/data/data_source/home_local_data_source.dart';
import 'package:fashions/features/home/data/data_source/home_remote_data_source.dart';
import 'package:fashions/features/home/domain/use_case/featch_banner_use_case.dart';
import 'package:fashions/features/home/domain/use_case/featch_categorys_use_case.dart';
import 'package:fashions/features/home/domain/use_case/fetch_product_user_case.dart';
import 'package:fashions/features/home/presentation/manager/banner_controller.dart';
import 'package:fashions/features/home/presentation/manager/category_controller.dart';
import 'package:fashions/features/home/presentation/manager/product_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => BannerController(
        featchBannerUseCase: FeatchBannerUseCase(
          homeRepo: getIt.get<HomeRepoImp>(),
        ),
      ),
    );
    Get.lazyPut(
      () => CategoryController(
        featchCategorysUseCase: FeatchCategorysUseCase(
          homeRepo: getIt.get<HomeRepoImp>(),
        ),
      ),
    );
    Get.lazyPut(
      () => ProductController(
        fetchProductUserCase: FetchProductUserCase(
          homeRepo: getIt.get<HomeRepoImp>(),
        ),
      ),
    );
  }
}
