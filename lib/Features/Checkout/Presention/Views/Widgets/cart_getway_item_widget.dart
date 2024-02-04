// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentGetwayItemsWidget extends StatelessWidget {
  const PaymentGetwayItemsWidget({
    super.key,
    this.isActive = false,
    required this.imagePath,
    this.onTap,
  });
  final bool isActive;
  final String imagePath;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        width: 103,
        height: 62,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color:
                  isActive ? const Color(0xFF34A853) : const Color(0xff0000080),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: isActive ? const Color(0xFF34A853) : Colors.grey,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SvgPicture.asset(
                imagePath,
                // height: 31,
                // fit: BoxFit.scaleDown,
                // width: 45,
              ),
            )),
      ),
    );
  }
}
