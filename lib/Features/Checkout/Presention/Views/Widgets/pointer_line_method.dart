import 'package:flutter/material.dart';

List<Widget> poinerLignWidget() {
  return List.generate(
      30,
      (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2,
              ),
              child: Container(
                color: const Color(0xffB8B8B8),
                height: 2,
              ),
            ),
          ));
}
