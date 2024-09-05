import 'package:fashions/core/utils/show_alert.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';
import 'package:fashions/features/home/domain/use_case/featch_categorys_use_case.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  final FeatchCategorysUseCase featchCategorysUseCase;
  var isLoading = false.obs;

  CategoryController({required this.featchCategorysUseCase});
  @override
  void onInit() {
    featchCategorys();
    super.onInit();
  }

  var category = <CategoryEntity>[].obs;
  Future<void> featchCategorys() async {
    isLoading(true);
    try {
      var result = await featchCategorysUseCase.call();
      result.fold(
        (failure) => showCenteredDialog('Error', failure.message),
        (categoryList) {
          category.value = categoryList;
        },
      );
    } catch (e) {
      showCenteredDialog('Error e', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
