import 'package:fashions/core/utils/show_alert.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';
import 'package:fashions/features/home/domain/use_case/fetch_product_user_case.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final FetchProductUserCase fetchProductUserCase;
  var isLoading = false.obs;

  ProductController({required this.fetchProductUserCase});

 
  @override
  void onInit() {
    feachProducts();
    super.onInit();
  }

  var product = <ProductEntity>[].obs;
  Future<void> feachProducts() async {
    isLoading(true);
    try {
      var result = await fetchProductUserCase.call();
      result.fold(
        (failure) => showCenteredDialog('Error', failure.message),
        (productList) {
          product.value = productList;
        },
      );
    } catch (e) {
      showCenteredDialog('Error e', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
