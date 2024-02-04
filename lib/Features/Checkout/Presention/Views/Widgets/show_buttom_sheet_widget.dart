import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/Widgets/custom_button_widget.dart';
import 'listview_carts_item_widget.dart';

class ShowBottomSheetWidget extends StatelessWidget {
  const ShowBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ListViewCatsItemWidget(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 45,
            child: CustomButtonWidget(
              onTap: () {
                Navigator.of(context).pop();
              },
              nameButton: 'Continue',
              textStyle: Styles.tesxtStyle22,
            ),
          )
        ],
      ),
    );
  }
}
