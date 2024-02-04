import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../Core/Utils/styles.dart';
import 'order_info_item_widget.dart';

class DetailsThankYouCard extends StatelessWidget {
  const DetailsThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        'Thank you!',
        textAlign: TextAlign.center,
        style: Styles.tesxtStyle25,
      ),
      const SizedBox(
        height: 2,
      ),
      const Text(
        'Your transaction was successful',
        textAlign: TextAlign.center,
        style: Styles.tesxtStyle20,
      ),
      const SizedBox(
        height: 42,
      ),
      OrderInfoItem(
        title: 'Date',
        textStyleT: Styles.tesxtStyle18,
        price: '01/24/2023',
        textStyleP: Styles.tesxtStyle18.copyWith(fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 20,
      ),
      OrderInfoItem(
        title: 'Time',
        textStyleT: Styles.tesxtStyle18,
        price: '10:15 AM',
        textStyleP: Styles.tesxtStyle18.copyWith(fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 20,
      ),
      OrderInfoItem(
        title: 'To',
        textStyleT: Styles.tesxtStyle18,
        price: 'Sam Louis',
        textStyleP: Styles.tesxtStyle18.copyWith(fontWeight: FontWeight.w600),
      ),
      const Divider(
        height: 60,
        thickness: 2,
        color: Color(0xFFC6C6C6),
      ),
      const OrderInfoItem(
        title: 'Total',
        textStyleT: Styles.tesxtStyle24,
        price: r'$50.97',
        textStyleP: Styles.tesxtStyle24,
      ),
      const SizedBox(height: 30),
      Container(
        width: 305,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
            vertical: 16,
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/logo_master_card.svg'),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Credit Card',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Mastercard **78',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.699999988079071),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/SVGRepo_iconCarrier.svg',
            fit: BoxFit.scaleDown,
          ),
          Container(
            width: 113,
            height: 58,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                'PAID',
                textAlign: TextAlign.center,
                style: Styles.tesxtStyle24.copyWith(
                  color: const Color(0xFF34A853),
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: ((MediaQuery.of(context).size.height * .2 + 20) / 2) - 29,
      )
    ]);
  }
}
