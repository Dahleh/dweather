import 'package:dweather/core/utils/utlis_const.dart';
import 'package:flutter/services.dart';

Map<String, dynamic> errorData = {};

String noImageFound =
    'https://www.iconsdb.com/icons/preview/gray/exclamation-xxl.png';

// AppUserEntity? appUserEntity;
String croppedFaceURL = '';

bool isShowingErrorDialog = false;
String? sendMoneyServiceTypeEnum = "";

String? returnError(key) {
  if (errorData.containsKey(key)) {
    return errorData[key].toString().split("[")[1].split("]")[0];
  }
  return null;
}

RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
RegExp emailRegexx =
    RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
RegExp only7DigitsWithOnly2DecimalRegex = RegExp(r'^\d{1,7}(\.\d{0,2})?');
RegExp only11DigitsWithOnly2DecimalRegex = RegExp(r'^\d{1,11}(\.\d{0,2})?');
RegExp alphaNumericRegex = RegExp(r'^(?! )[a-zA-Z0-9\s]*');
RegExp alphaNumericWithoutSpaceRegex = RegExp(r'^(?! )[a-zA-Z0-9]*');
RegExp onlyAlphabetsRegex = RegExp(r'^(?! )[A-Za-z\s]*');
RegExp alphaNumericWithDecimalRegex = RegExp(r'^(?! )[a-zA-Z0-9.\s]*');
RegExp digitOnlyWithSpaceRegex = RegExp(r'^[0-9\s]*');

class SharedKeys {
  ///-------------------- Shared Preference Keys -------------------- ///
  static const String bearerToken = "Bearer Token";
  static const String user = "User";
  static const String signupUser = "Signup User";
  static const String bioToken = "Bio Token";
  static const String guestToken = "Guest Token";
  static const String sessionID = "Session Id";
  static const String shouldOpenBiometric = "Should Open Biometric";
  static const String isLoggedInOneTime = "isLoggedInOneTime";
  static const String countryCode = "Country Code";
}

String supportPhoneNumber = "+97444537777";
String supportEmailAddress =
    "digital@alfardanexchange.com.qa"; // "cservice@alfardanexchange.com.qa";

String getFontFamilyByLanguage({required Locale currentLocale}) {
  switch (currentLocale.languageCode) {
    case "ar":
      return "NotoSansArabic";
    default:
      return "MoriGothic";
  }
}

bool isDecimalPointZero({required String amount}) {
  double? amountInDouble = double.parse(amount);
  bool isDecimalPartZero = ((amountInDouble * 100) % 100) == 0;
  // True ==> contains zero demical points
  return isDecimalPartZero;
}

fcyButtonEnableDisableAmountLogic({required String? amount}) {
  if (amount == null) {
    return false;
  } else {
    bool? hasDecimal = amount.contains('.');
    bool? isContainsDecimalWithZero = isDecimalPointZero(amount: amount);
    if (hasDecimal == true && amount[amount.length - 1] == '.') {
      return false;
    } else {
      if (hasDecimal == true && isContainsDecimalWithZero == true) {
        return true;
      } else if (hasDecimal == true && isContainsDecimalWithZero == false) {
        return false;
      } else {
        return true;
      }
    }
  }
}

extension CardNumberFormatter on String? {
  String? formatAsCardNumber() {
    if (this != null && this?.isNotEmpty == true) {
      // Remove any non-digit characters
      String cleaned = this!.replaceAll(RegExp(r'\D'), '');

      // Split the string into groups of 4 digits
      List<String> groups = [];
      for (int i = 0; i < cleaned.length; i += 4) {
        groups.add(cleaned.substring(
            i, i + 4 > cleaned.length ? cleaned.length : i + 4));
      }

      // Join the groups with a space
      return groups.join(' ');
    } else {
      return null;
    }
  }
}

extension MaskedCardNumberExtension on String? {
  String? maskCardNumber() {
    if (this != null && this?.isNotEmpty == true) {
      if (this?.length != 19) {
        return this;
      } else {
        // Split the string by spaces
        List<String> parts = this!.split(" ");
        // Return formatted card number
        return "${parts[0]} **** **** ${parts[3]}";
      }
    } else {
      return null;
    }
  }
}

bool isDirectionalityRTL() =>
    Directionality.of(navigatorState.currentContext!).index == 0;

const String flavourCommand =
    'flutter build apk --split-per-abi --flavor prod -t lib/main_prod.dart';
// 'flutter build apk --split-per-abi --flavor uat -t lib/main_dev.dart'

enum GracePeriodStatus { valid, withinGracePeriod, expired, invalid }

GracePeriodStatus checkGracePeriod(String expiryDateString,
    {int gracePeriodDays = 90}) {
  try {
    DateTime expiryDate = DateTime.parse(expiryDateString);
    DateTime today = DateTime.now();

    if (expiryDate.isAfter(today)) {
      return GracePeriodStatus.valid;
    }

    DateTime gracePeriodEndDate =
        expiryDate.add(Duration(days: gracePeriodDays));
    if (today.isBefore(gracePeriodEndDate) ||
        today.isAtSameMomentAs(gracePeriodEndDate)) {
      return GracePeriodStatus.withinGracePeriod;
    }

    return GracePeriodStatus.expired;
  } catch (e) {
    return GracePeriodStatus.invalid;
  }
}

void setFormattedCardNumber(
    String cardNumber, TextEditingController cardNumberController) {
  String formattedCardNumber = cardNumber.replaceAll(RegExp(r'\D'), '');
  StringBuffer formattedText = StringBuffer();

  for (int i = 0; i < formattedCardNumber.length; i++) {
    if (i > 0 && i % 4 == 0) {
      formattedText.write(' ');
    }
    formattedText.write(formattedCardNumber[i]);
  }
  cardNumberController.text = formattedText.toString();
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');

    final limitedDigits =
        digitsOnly.length > 16 ? digitsOnly.substring(0, 16) : digitsOnly;

    int cursorPositionInDigits = 0;
    for (int i = 0; i < newValue.selection.baseOffset; i++) {
      if (RegExp(r'\d').hasMatch(newValue.text[i])) {
        cursorPositionInDigits++;
      }
    }

    final StringBuffer formatted = StringBuffer();
    int newCursorPosition = 0;
    int digitIndex = 0;
    for (int i = 0; i < limitedDigits.length; i++) {
      if (i > 0 && i % 4 == 0) {
        formatted.write(' ');
        if (digitIndex < cursorPositionInDigits) {
          newCursorPosition++;
        }
      }
      formatted.write(limitedDigits[i]);
      if (digitIndex < cursorPositionInDigits) {
        newCursorPosition++;
      }
      digitIndex++;
    }

    return TextEditingValue(
      text: formatted.toString(),
      selection: TextSelection.collapsed(offset: newCursorPosition),
    );
  }
}
