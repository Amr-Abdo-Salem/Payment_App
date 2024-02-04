import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presention/Views/Widgets/cart_getway_item_widget.dart';

class ListViewCatsItemWidget extends StatefulWidget {
  const ListViewCatsItemWidget({
    super.key,
  });

  @override
  State<ListViewCatsItemWidget> createState() => _ListViewCatsItemWidgetState();
}

class _ListViewCatsItemWidgetState extends State<ListViewCatsItemWidget> {
  int isCurrentUse = 0;
  List<String> images = [
    'assets/images/Cart.svg',
    'assets/images/Paypal.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PaymentGetwayItemsWidget(
              isActive: isCurrentUse == index,
              imagePath: images[index],
              onTap: () {
                isCurrentUse = index;
                setState(() {});
              },
            ),
          );
        },
      ),
    );
  }
}
