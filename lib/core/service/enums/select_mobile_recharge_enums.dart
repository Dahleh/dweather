enum SelectMobileRechargeTypeEnum { mobileTopUp, mobilePkgs }

extension SendMoneyServiceTypeExtension on SelectMobileRechargeTypeEnum {
  String? get value {
    switch (this) {
      case SelectMobileRechargeTypeEnum.mobileTopUp:
        return 'MT';
      case SelectMobileRechargeTypeEnum.mobilePkgs:
        return 'MP';
      default:
        return '';
    }
  }
}

extension ToSendMoneyServiceTypeExtension on String {
  SelectMobileRechargeTypeEnum? get toMobileRechargeServiceTypeEnum {
    switch (this) {
      case 'MT':
        return SelectMobileRechargeTypeEnum.mobileTopUp;
      case 'MP':
        return SelectMobileRechargeTypeEnum.mobilePkgs;

      default:
        return SelectMobileRechargeTypeEnum.mobileTopUp;
    }
  }
}
