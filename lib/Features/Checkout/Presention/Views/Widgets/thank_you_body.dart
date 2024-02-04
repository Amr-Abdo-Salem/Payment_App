import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presention/Views/Widgets/pointer_line_method.dart';
import 'details_thsnkyou_card_widget.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                top: 50 + 16,
                left: 22,
                right: 22,
              ),
              child: DetailsThankYouCard(),
            ),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * .2 + 20,
              left: 20 + 16,
              right: 20 + 16,
              child: Row(
                children: poinerLignWidget(),
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 40,
                child: Icon(
                  Icons.check,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
