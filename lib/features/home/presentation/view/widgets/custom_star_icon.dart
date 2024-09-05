import 'package:flutter/material.dart';

class CustomStarIcon extends StatelessWidget {
  const CustomStarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => const Icon(
          Icons.star,
          color: Colors.orange,
        ),
      ),
    );
  }
}
