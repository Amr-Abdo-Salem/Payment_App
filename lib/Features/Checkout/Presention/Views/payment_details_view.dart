import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presention/Views/Widgets/payment_details_body.dart';

import '../../../../Core/Widgets/custom_appBar_widget.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Payment Details',
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: PaymentDetailsViewBody(),
      ),
    );
  }
}
