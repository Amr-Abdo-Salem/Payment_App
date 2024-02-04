import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/styles.dart';
import 'package:payment_app/Features/Checkout/Presention/Views/Widgets/order_info_item_widget.dart';
import '../../../../../Core/Widgets/custom_button_widget.dart';
import 'show_buttom_sheet_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Expanded(child: Image.asset('assets/images/Group_6.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            textStyleT: Styles.tesxtStyle18,
            price: r'$42.97',
            textStyleP: Styles.tesxtStyle18,
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            textStyleT: Styles.tesxtStyle18,
            price: r'$0',
            textStyleP: Styles.tesxtStyle18,
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            textStyleT: Styles.tesxtStyle18,
            price: r'$0',
            textStyleP: Styles.tesxtStyle18,
          ),
          const Divider(
            height: 34,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          const OrderInfoItem(
            title: 'Total',
            textStyleT: Styles.tesxtStyle24,
            price: r'$50.97',
            textStyleP: Styles.tesxtStyle24,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButtonWidget(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const PaymentDetailsView(),
              //   ),
              // );
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  builder: (context) {
                    return const ShowBottomSheetWidget();
                  });
            },
            nameButton: 'Complete Payment',
            textStyle: Styles.tesxtStyle22,
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
