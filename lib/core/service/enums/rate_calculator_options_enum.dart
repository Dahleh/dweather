enum RateCalculatorOptionsEnum { cashPickup, bankTransfer, foreignCurrency }

extension RateCalculatorOptionsEnumToStringExtension
    on RateCalculatorOptionsEnum {
  String get value {
    switch (this) {
      case RateCalculatorOptionsEnum.cashPickup:
        return 'cashPickup';
      case RateCalculatorOptionsEnum.bankTransfer:
        return 'bankTransfer';
      case RateCalculatorOptionsEnum.foreignCurrency:
        return 'foreignCurrency';
    }
  }
}

extension StringToRateCalculatorOptionsEnumExtension on String {
  RateCalculatorOptionsEnum get toRateCalculatorOptionsEnum {
    switch (this) {
      case 'cashPickup':
        return RateCalculatorOptionsEnum.cashPickup;
      case 'bankTransfer':
        return RateCalculatorOptionsEnum.bankTransfer;
      case 'foreignCurrency':
        return RateCalculatorOptionsEnum.foreignCurrency;
      default:
        return RateCalculatorOptionsEnum.foreignCurrency;
    }
  }
}
