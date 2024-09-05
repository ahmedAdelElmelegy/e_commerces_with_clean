import 'package:fashions/core/utils/show_alert.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';
import 'package:fashions/features/home/domain/use_case/featch_banner_use_case.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  @override
  void onInit() async {
    await featchBanners();
    super.onInit();
  }

  var isLoading = false.obs;
  final FeatchBannerUseCase featchBannerUseCase;

  BannerController({required this.featchBannerUseCase});
  var banners = <BannerEntity>[].obs;
  Future<void> featchBanners() async {
    isLoading(true);
    try {
      var result = await featchBannerUseCase.call();
      result.fold(
        (failure) => showCenteredDialog('Error', failure.message),
        (banner) {
          banners.value = banner;
        },
      );
    } catch (e) {
      showCenteredDialog('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
