import 'package:fashions/features/notifications/presentation/manager/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircularBottomNavBar extends StatelessWidget {
  MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildNavItem(Icons.home, 0),
          _buildNavItem(Icons.shopping_cart, 1),
          _buildNavItem(Icons.notifications, 2),
          _buildNavItem(Icons.person, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return Obx(() {
      return GestureDetector(
        onTap: () => controller.onItemSelected(index),
        child: Container(
          decoration: BoxDecoration(
              color: controller.currentIndex == index
                  ? Colors.blue
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(15)),
          height: 50.0,
          width: 50.0,
          child: Icon(
            icon,
            color:
                controller.currentIndex == index ? Colors.white : Colors.grey,
          ),
        ),
      );
    });
  }
}
