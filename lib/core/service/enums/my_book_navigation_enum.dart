enum MyBookNavigationEnum { activation, explore }

extension MyBookNavigationEnumExtension on MyBookNavigationEnum {
  String get value {
    switch (this) {
      case MyBookNavigationEnum.activation:
        return 'activation';
      case MyBookNavigationEnum.explore:
        return 'explore';
    }
  }
}

extension StringToMyBookNavigationEnumExtension on String {
  MyBookNavigationEnum get toMyBookNavigationEnum {
    switch (this) {
      case 'activation':
        return MyBookNavigationEnum.activation;
      case 'explore':
        return MyBookNavigationEnum.explore;
      default:
        return MyBookNavigationEnum.activation;
    }
  }
}
