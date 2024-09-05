import 'package:flutter/material.dart';

class SelectedSmProduct extends StatelessWidget {
  const SelectedSmProduct({super.key, this.isActive, required this.image});
  final bool? isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: size.height * .04,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: isActive == true
                ? Border.all(color: Colors.blue, width: 5)
                : Border.all(color: Colors.black, width: 3)),
        child: Image.network(
          image,
          height: isActive == true ? size.height * .06 : size.height * .05,
        ),
      ),
    );
  }
}
