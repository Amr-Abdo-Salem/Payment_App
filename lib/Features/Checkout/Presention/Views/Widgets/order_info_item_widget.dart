import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    super.key,
    required this.title,
    required this.price,
    required this.textStyleT,
    required this.textStyleP,
  });
  final String title, price;
  final TextStyle textStyleT;
  final TextStyle textStyleP;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyleT,
        ),
        Text(
          price,
          style: textStyleP,
        ),
      ],
    );
  }
}
