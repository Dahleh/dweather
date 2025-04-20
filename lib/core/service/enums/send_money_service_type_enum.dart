enum SendMoneyServiceTypeEnum {
  cashPickup,
  bankTransfer,
  mobileWallet,
  instaPay,
  atmCard,
  vodaFone
}

extension SendMoneyServiceTypeExtension on SendMoneyServiceTypeEnum {
  String? get value {
    switch (this) {
      case SendMoneyServiceTypeEnum.cashPickup:
        return 'PU';
      case SendMoneyServiceTypeEnum.bankTransfer:
        return 'BB';
      case SendMoneyServiceTypeEnum.mobileWallet:
        return 'MW';
      case SendMoneyServiceTypeEnum.instaPay:
        return 'IP';
      case SendMoneyServiceTypeEnum.atmCard:
        return 'BSCP';
      case SendMoneyServiceTypeEnum.vodaFone:
        return 'MSMW';
      default:
        return '';
    }
  }
}

extension ToSendMoneyServiceTypeExtension on String {
  SendMoneyServiceTypeEnum? get toSendMoneyServiceTypeEnum {
    switch (this) {
      case 'PU':
        return SendMoneyServiceTypeEnum.cashPickup;
      case 'BB':
        return SendMoneyServiceTypeEnum.bankTransfer;
      case 'MW':
        return SendMoneyServiceTypeEnum.mobileWallet;
      case 'IP':
        return SendMoneyServiceTypeEnum.instaPay;
      case 'BSCP':
        return SendMoneyServiceTypeEnum.atmCard;
      case 'MSMW':
        return SendMoneyServiceTypeEnum.vodaFone;
      default:
        return SendMoneyServiceTypeEnum.cashPickup;
    }
  }
}
