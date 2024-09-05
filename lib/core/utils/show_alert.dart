import 'package:get/get.dart';

void showCenteredDialog(title, message) {
  Get.defaultDialog(
    title: title,
    middleText: message,
    barrierDismissible: false,
    onWillPop: () async => false,
  );

  Future.delayed(const Duration(seconds: 10), () {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  });
}
