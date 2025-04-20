enum SendMoneyType { cashPickup, bankTransfer }

extension SendMoneyTypeExtension on SendMoneyType {
  String get value {
    switch (this) {
      case SendMoneyType.cashPickup:
        return 'CASHPICKUP';
      case SendMoneyType.bankTransfer:
        return 'BANKTRANSFER';
    }
  }
}

extension PaymentTypeExtension on String {
  SendMoneyType get toPaymentTypeEnum {
    switch (this) {
      case 'CASHPICKUP':
        return SendMoneyType.cashPickup;
      case 'BANKTRANSFER':
        return SendMoneyType.bankTransfer;
      default:
        return SendMoneyType.cashPickup;
    }
  }
}

extension ServiceTypeExtension on String {
  String get toPaymentTypeLabel {
    switch (this) {
      case 'CASHPICKUP':
        return "Cash Pickup";
      case 'BANKTRANSFER':
        return 'Bank Transfer';
      default:
        return '';
    }
  }
}
