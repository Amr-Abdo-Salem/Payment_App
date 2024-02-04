import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presention/Views/Widgets/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ThankYouViewBody(),
      ),
    );
  }
}
