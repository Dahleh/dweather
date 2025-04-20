enum PaymentGatewaysEnum { qPay, applePay, googlePay, oreedoPay, none }

extension PaymentGatewaysEnumToStringExtension on PaymentGatewaysEnum {
  String? get value {
    switch (this) {
      case PaymentGatewaysEnum.qPay:
        return 'qPay';
      case PaymentGatewaysEnum.applePay:
        return 'applePay';
      case PaymentGatewaysEnum.googlePay:
        return 'googlePay';
      case PaymentGatewaysEnum.oreedoPay:
        return 'oreedoPay';
      case PaymentGatewaysEnum.none:
        return 'none';
      default:
        return null;
    }
  }
}

extension StringToPaymentGatewaysEnumExtension on String? {
  PaymentGatewaysEnum? get toPaymentGatewayEnum {
    switch (this) {
      case 'qPay':
        return PaymentGatewaysEnum.qPay;
      case 'applePay':
        return PaymentGatewaysEnum.applePay;
      case 'googlePay':
        return PaymentGatewaysEnum.googlePay;
      case 'oreedoPay':
        return PaymentGatewaysEnum.oreedoPay;
      case 'none':
        return PaymentGatewaysEnum.none;
      default:
        return null;
    }
  }
}
