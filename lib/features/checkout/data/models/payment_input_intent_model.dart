class PaymentInputIntentModel {
  final String amount;
  final String currency;

  PaymentInputIntentModel({required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {'amount': amount, 'currency': currency};
  }
}
