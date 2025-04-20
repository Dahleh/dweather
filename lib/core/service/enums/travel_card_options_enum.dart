enum TravelCardServiceTypeEnum { buyCard, reloadCard }

extension TravelCardServiceTypeEnumExtension on TravelCardServiceTypeEnum {
  String? get value {
    switch (this) {
      case TravelCardServiceTypeEnum.buyCard:
        return 'New';
      case TravelCardServiceTypeEnum.reloadCard:
        return 'RELOAD';
      default:
        return '';
    }
  }
}

extension TravelCardServiceTypeExtension on String {
  TravelCardServiceTypeEnum? get toTravelCardServiceTypeEnum {
    switch (this) {
      case 'New':
        return TravelCardServiceTypeEnum.buyCard;
      case 'RELOAD':
        return TravelCardServiceTypeEnum.reloadCard;
      default:
        return TravelCardServiceTypeEnum.buyCard;
    }
  }
}
