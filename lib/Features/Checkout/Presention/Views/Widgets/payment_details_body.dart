import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/Core/Utils/styles.dart';
import 'package:payment_app/Core/Widgets/custom_button_widget.dart';
import 'package:payment_app/Features/Checkout/Presention/Views/thank_you_view.dart';
import 'listview_carts_item_widget.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formState = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: ListViewCatsItemWidget()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 35,
          ),
        ),
        SliverToBoxAdapter(
            child: CustomCreditCardDetailsWidget(
          autovalidateMode: autovalidateMode,
          formState: formState,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
              ),
              child: CustomButtonWidget(
                onTap: () {
                  if (formState.currentState!.validate()) {
                    formState.currentState!.save();
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ThankYouView(),
                      ),
                    );
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
                nameButton: 'Pay',
                textStyle: Styles.tesxtStyle22,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomCreditCardDetailsWidget extends StatefulWidget {
  const CustomCreditCardDetailsWidget(
      {super.key, required this.formState, required this.autovalidateMode});
  final GlobalKey<FormState> formState;
  final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCardDetailsWidget> createState() =>
      _CustomCreditCardDetailsWidgetState();
}

class _CustomCreditCardDetailsWidgetState
    extends State<CustomCreditCardDetailsWidget> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
          isHolderNameVisible: true,
        ),
        const SizedBox(
          height: 36,
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cardHolderName = creditCardModel.cardHolderName;
            cvvCode = creditCardModel.cvvCode;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formState,
        ),
      ],
    );
  }
}
