enum IdMissionJourneysEnum { signup, qidExpired }

extension IdMissionJourneysEnumToStringExtension on IdMissionJourneysEnum {
  String? get value {
    switch (this) {
      case IdMissionJourneysEnum.signup:
        return 'signup';
      case IdMissionJourneysEnum.qidExpired:
        return 'qidExpired';
      default:
        return null;
    }
  }
}

extension StringToIdMissionJourneysEnumExtension on String {
  IdMissionJourneysEnum? get toIdMissionJourneysEnum {
    switch (this) {
      case 'signup':
        return IdMissionJourneysEnum.signup;
      case 'qidExpired':
        return IdMissionJourneysEnum.qidExpired;
      default:
        return null;
    }
  }
}
