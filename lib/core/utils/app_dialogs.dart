import 'package:dweather/core/utils/confirmation_dialog.dart';
import 'package:dweather/core/utils/qid_expiry_dialog_grace.dart';
import 'package:dweather/core/utils/utlis_const.dart';

class AppDialogs {
  static showQIDExpiryGraceDialog(
    context,
    content,
    void Function()? onTapContinueButton,
    void Function()? onTapCrossButton,
  ) {
    return showDialog(
        context: context,
        builder: (context) => QIDExpiryGraceDialog(
              content: content,
              onTapContinueButton: onTapContinueButton,
              onTapCrossButton: onTapCrossButton,
            ));
  }

  static showUnblocUserAccountDialog({
    required BuildContext? context,
    String? title,
    String? content,
    String? qatarID,
    String? userID,
    String? mobileNumber,
    String? unblockAccountButtonText,
    void Function()? onTapUnblockAccountButton,
  }) {
    return showDialog(
      context: context!,
      builder: (context) => UnblocUserAccountDialog(
        title: title,
        content: content,
        unblockAccountButtonText: unblockAccountButtonText,
        qatarID: qatarID,
        userID: userID,
        mobileNumber: mobileNumber,
        onTapUnblockAccountButton: onTapUnblockAccountButton,
      ),
    );
  }

  static showError501HandlingBottomModelSheet({
    required BuildContext context,
    required String content,
    void Function()? onPressedContinueBtn,
    void Function()? onPressedCancelBtn,
    required String continueButtonLabel,
    required String cancelButttonLabel,
    String? title,
  }) {
    // return showDialog(
    //   context: context,
    //   builder: (context) => Error501HandlingBottomModalSheet(text: content),
    // );
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      // transitionAnimationController: controller,
      context: context,
      builder: (context) {
        return Error501HandlingBottomModalSheet(
          text: content,
          onPressedContinueBtn: onPressedContinueBtn,
          onPressedCancelBtn: onPressedCancelBtn,
          continueButtonLabel: continueButtonLabel,
          cancelButttonLabel: cancelButttonLabel,
          title: title,
        );
      },
    );
  }

  static showErrorIPIDHandlingBottomModelSheet({
    required BuildContext context,
    void Function()? onPressedContinueBtn,
    void Function()? onPressedCancelBtn,
    required String continueButtonLabel,
    required String cancelButttonLabel,
    required String? validationStatus,
    required String? matchedScore,
    required String? title,
  }) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return ErrorIPIDHandlingBottomModalSheet(
          onPressedContinueBtn: onPressedContinueBtn,
          onPressedCancelBtn: onPressedCancelBtn,
          continueButtonLabel: continueButtonLabel,
          cancelButttonLabel: cancelButttonLabel,
          validationStatus: validationStatus,
          matchedScore: matchedScore,
          title: title,
        );
      },
    );
  }

  static Future<void> showDeactivateAccountAlertDialog({
    required BuildContext context,
    String? content,
    String? title,
    String? continueBtnLabel,
    void Function()? continueBtnOnTap,
    Color? continueBtnLabelColor,
  }) async {
    return await showDialog(
      context: context,
      builder: (context) => DeactivateAccountAlertDialog(
        content: content,
        title: title,
        continueBtnLabel: continueBtnLabel,
        continueBtnOnTap: continueBtnOnTap,
        continueBtnLabelColor: continueBtnLabelColor,
      ),
    );
  }

  static Future<void> showBiometricEnableAlertDialog({
    required BuildContext context,
    String? content,
    String? title,
    String? continueBtnLabel,
    void Function()? continueBtnOnTap,
    Color? continueBtnLabelColor,
    String? cancelBtnLabel,
    void Function()? cancelBtnOnTap,
    Color? cancelBtnLabelColor,
    void Function()? closeBtnOnTap,
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DeactivateAccountAlertDialog(
        content: content,
        title: title,
        continueBtnLabel: continueBtnLabel,
        continueBtnOnTap: continueBtnOnTap,
        continueBtnLabelColor: continueBtnLabelColor,
        cancelBtnLabel: cancelBtnLabel,
        cancelBtnOnTap: cancelBtnOnTap,
        cancelBtnLabelColor: cancelBtnLabelColor,
        closeBtnOnTap: closeBtnOnTap,
      ),
    );
  }

  static Future<void> showSigninOrGuestSigninDialog({
    required BuildContext context,
    String? content,
    String? title,
    String? signinButtonText,
    String? guestModeButtonText,
    void Function()? onTapSigninButton,
    void Function()? onTapGuestModeButton,
    void Function()? onTapCancelButton,
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => SigninOrGuestSigninDialog(
        title: title,
        content: content,
        signinButtonText: signinButtonText,
        guestModeButtonText: guestModeButtonText,
        onTapSigninButton: onTapSigninButton,
        onTapGuestModeButton: onTapGuestModeButton,
        onTapCancelButton: onTapCancelButton,
      ),
    );
  }

  // static showRequiredPinForgetDialog(
  //     {required BuildContext context, AppUserEntity? appUser}) {
  //   return showDialog(
  //     context: context,
  //     builder: (context) => RequiredPinForgetDialog(appUser: appUser),
  //   );
  // }

  static Future<void> showAppUpdateAlertDialog({
    required BuildContext context,
    String? title,
    String? content,
    String? rightBtnText,
    String? leftBtnText,
    void Function()? onTapRightBtn,
    void Function()? onTapLeftBtn,
    bool? isRightBtnEnable,
    bool? isLeftBtnEnable,
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AppUpdateAlertDialog(
        title: title,
        content: content,
        rightBtnText: rightBtnText,
        leftBtnText: leftBtnText,
        onTapRightBtn: onTapRightBtn,
        onTapLeftBtn: onTapLeftBtn,
        isRightBtnEnable: isRightBtnEnable,
        isLeftBtnEnable: isLeftBtnEnable,
      ),
    );
  }

  static showGoldProductDeliveryDialog(context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const GoldProductsDelvieryDialog(),
    );
  }

  // static Future<void> showTransactionalStatementFilterDialog(
  //     {required BuildContext context}) async {
  //   return await showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (context) => const TransactionalStatementFilterationDialog(),
  //   );
  // }

  static Future<void> showConfirmationDialog({
    required BuildContext context,
    String? title,
    String? content,
    String? rightBtnText,
    String? leftBtnText,
    void Function()? onTapRightBtn,
    void Function()? onTapLeftBtn,
    bool? isRightBtnEnable,
    bool? isLeftBtnEnable,
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => ConfirmationDialog(
        title: title,
        content: content,
        rightBtnText: rightBtnText,
        leftBtnText: leftBtnText,
        onTapRightBtn: onTapRightBtn,
        onTapLeftBtn: onTapLeftBtn,
        isRightBtnEnable: isRightBtnEnable,
        isLeftBtnEnable: isLeftBtnEnable,
      ),
    );
  }
}
