// Privacy Policy Pages Enum'
enum PrivacyPolicyPagesEnum { privacyPolicy, termsAndCondition }

extension PrivacyPolicyPagesEnumToStringExtension on PrivacyPolicyPagesEnum {
  int? get value {
    switch (this) {
      case PrivacyPolicyPagesEnum.privacyPolicy:
        return 1;
      case PrivacyPolicyPagesEnum.termsAndCondition:
        return 2;
      default:
        return null;
    }
  }
}

extension StringToPrivacyPolicyPagesEnumExtension on int {
  PrivacyPolicyPagesEnum? get toPrivacyPolicyPagesEnum {
    switch (this) {
      case 1:
        return PrivacyPolicyPagesEnum.privacyPolicy;
      case 2:
        return PrivacyPolicyPagesEnum.termsAndCondition;
      default:
        return null;
    }
  }
}

// Privacy Policy Types Enum
enum PrivacyPolicyTypeEnum {
  all,
  cashPickup,
  bankTransfer,
  foreignCurrency,
  mobileWallet,
  metalProducts,
  travelCard,
  auth,
}

extension PrivacyPolicyTypeEnumToStringExtension on PrivacyPolicyTypeEnum {
  int? get value {
    switch (this) {
      case PrivacyPolicyTypeEnum.all:
        return 0;
      case PrivacyPolicyTypeEnum.cashPickup:
        return 1;
      case PrivacyPolicyTypeEnum.bankTransfer:
        return 2;
      case PrivacyPolicyTypeEnum.foreignCurrency:
        return 3;
      case PrivacyPolicyTypeEnum.mobileWallet:
        return 4;
      case PrivacyPolicyTypeEnum.metalProducts:
        return 5;
      case PrivacyPolicyTypeEnum.travelCard:
        return 6;
      case PrivacyPolicyTypeEnum.auth:
        return 7;
      default:
        return null;
    }
  }
}

extension StringToPrivacyPolicyTypeEnumExtension on int {
  PrivacyPolicyTypeEnum? get toPrivacyPolicyTypeEnum {
    switch (this) {
      case 0:
        return PrivacyPolicyTypeEnum.all;
      case 1:
        return PrivacyPolicyTypeEnum.cashPickup;
      case 2:
        return PrivacyPolicyTypeEnum.bankTransfer;
      case 3:
        return PrivacyPolicyTypeEnum.foreignCurrency;
      case 4:
        return PrivacyPolicyTypeEnum.mobileWallet;
      case 5:
        return PrivacyPolicyTypeEnum.metalProducts;
      case 6:
        return PrivacyPolicyTypeEnum.travelCard;
      case 7:
        return PrivacyPolicyTypeEnum.auth;
      default:
        return null;
    }
  }
}
