enum BeneFieldSectioningEnum { beneficiaryDetails, bankDetails, otherDetails }

extension BeneFieldSectionEnumToStringExtension on BeneFieldSectioningEnum {
  String get value {
    switch (this) {
      case BeneFieldSectioningEnum.beneficiaryDetails:
        return 'BENE';
      case BeneFieldSectioningEnum.bankDetails:
        return 'BENE_BANK';
      case BeneFieldSectioningEnum.otherDetails:
        return 'OTHER_DETAILS';
    }
  }
}

extension StringToReceiptBeneFieldSectionEnumExtension on String {
  BeneFieldSectioningEnum get toBeneFieldSectionEnum {
    switch (this) {
      case 'BENE':
        return BeneFieldSectioningEnum.beneficiaryDetails;
      case 'BENE_BANK':
        return BeneFieldSectioningEnum.bankDetails;
      case 'OTHER_DETAILS':
        return BeneFieldSectioningEnum.otherDetails;
      default:
        return BeneFieldSectioningEnum.otherDetails;
    }
  }
}
