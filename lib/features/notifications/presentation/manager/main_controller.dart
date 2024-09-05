import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;
  void onItemSelected(int index) {
    currentIndex.value = index;
  }
  
}
