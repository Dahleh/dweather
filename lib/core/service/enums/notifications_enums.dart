// ignore_for_file: constant_identifier_names

enum NotificationType {
  LOOKUP_COUNTRY_RATES,
  GOLD_RATES,
  CASH_PICKUP,
  BANK_TRANSFER,
  BUY_FOREIGN_CURRENCY,
  SIGNIN,
  COMPLAIN,
  TRAVEL_CARD,
  MOBILE_WALLET,
}

extension NotificationTypeExtension on NotificationType {
  String get value {
    switch (this) {
      case NotificationType.LOOKUP_COUNTRY_RATES:
        return 'LOOKUP_COUNTRY_RATES';
      case NotificationType.GOLD_RATES:
        return 'GOLD_RATES';
      case NotificationType.CASH_PICKUP:
        return 'CASH_PICKUP';
      case NotificationType.BANK_TRANSFER:
        return 'BANK_TRANSFER';
      case NotificationType.BUY_FOREIGN_CURRENCY:
        return 'BUY_FOREIGN_CURRENCY';
      case NotificationType.COMPLAIN:
        return 'COMPLAIN';
      case NotificationType.SIGNIN:
        return 'SIGNIN';
      case NotificationType.TRAVEL_CARD:
        return 'TRAVEL_CARD';
      case NotificationType.MOBILE_WALLET:
        return 'MOBILE_WALLET';
    }
  }
}
