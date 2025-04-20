enum QPayRoutingEnum {
  sendMoney,
  foreignCurrency,
  metalProducts,
  buyTravelCard
}

extension QPayRoutingEnumToStringExtension on QPayRoutingEnum {
  String get value {
    switch (this) {
      case QPayRoutingEnum.sendMoney:
        return 'SENDMONEY';
      case QPayRoutingEnum.foreignCurrency:
        return 'FOREIGNCURRENCY';
      case QPayRoutingEnum.metalProducts:
        return 'METALPRODUCTS';
      case QPayRoutingEnum.buyTravelCard:
        return 'BUYTRAVELCARD';
    }
  }
}

extension StringToQPayRoutingEnumExtension on String {
  QPayRoutingEnum get toQPayRoutingEnum {
    switch (this) {
      case 'SENDMONEY':
        return QPayRoutingEnum.sendMoney;
      case 'FOREIGNCURRENCY':
        return QPayRoutingEnum.foreignCurrency;
      case 'METALPRODUCTS':
        return QPayRoutingEnum.metalProducts;
      case 'BUYTRAVELCARD':
        return QPayRoutingEnum.buyTravelCard;
      default:
        return QPayRoutingEnum.sendMoney;
    }
  }
}
