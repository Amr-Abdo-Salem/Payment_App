import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presention/Views/Widgets/my_cart_view_body.dart';
import '../../../../Core/Widgets/custom_appBar_widget.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
