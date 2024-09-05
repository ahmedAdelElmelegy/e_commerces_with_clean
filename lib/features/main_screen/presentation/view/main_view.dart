import 'package:fashions/features/cart/presentation/view/cart_view.dart';
import 'package:fashions/features/home/presentation/view/home_view.dart';
import 'package:fashions/features/main_screen/presentation/view/widgets/circle_botton_nav_bar.dart';
import 'package:fashions/features/notifications/presentation/manager/main_controller.dart';
import 'package:fashions/features/notifications/presentation/view/notification_view.dart';
import 'package:fashions/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  MainController controller = Get.put(MainController());
  List<Widget> pages = [
    HomeView(),
    CartView(),
    NotificationView(),
    ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          body: pages[controller.currentIndex.value],
          bottomNavigationBar: CircularBottomNavBar());
    });
  }
}
