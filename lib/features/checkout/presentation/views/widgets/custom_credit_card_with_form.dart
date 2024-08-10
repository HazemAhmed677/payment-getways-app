import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCardWithForm extends StatefulWidget {
  const CustomCreditCardWithForm({super.key});

  @override
  State<CustomCreditCardWithForm> createState() =>
      _CustomCreditCardWithFormState();
}

class _CustomCreditCardWithFormState extends State<CustomCreditCardWithForm> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          padding: 0,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: isCvvFocused,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (creditCardBrand) {},
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cardHolderName = creditCardModel.cardHolderName;
            cvvCode = creditCardModel.cvvCode;
            isCvvFocused = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: formKey,
        ),
      ],
    );
  }
}
