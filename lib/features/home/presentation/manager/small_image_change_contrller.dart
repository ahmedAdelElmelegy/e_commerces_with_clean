import 'package:get/get.dart';

class SmallImageChangeController extends GetxController {
  var currentIndex = 0.obs;
  var currenImage = ''.obs;
  void onImageChange(int index,String image) {
    currentIndex.value = index;
    currenImage.value = image;
  }
}
