enum AuthRedirectionEnum { signin, signup, forgotPin }

extension AuthRedirectionEnumToStringExtension on AuthRedirectionEnum {
  String? get value {
    switch (this) {
      case AuthRedirectionEnum.signin:
        return 'LOGIN';
      case AuthRedirectionEnum.signup:
        return 'SIGNUP';
      case AuthRedirectionEnum.forgotPin:
        return 'FORGOT_PIN';
      default:
        return null;
    }
  }
}

extension StringToAuthRedirectionEnumExtension on String? {
  AuthRedirectionEnum? get toAuthRedirectionEnum {
    switch (this) {
      case 'LOGIN':
        return AuthRedirectionEnum.signin;
      case 'SIGNUP':
        return AuthRedirectionEnum.signup;
      case 'FORGOT_PIN':
        return AuthRedirectionEnum.forgotPin;
      default:
        return null;
    }
  }
}
