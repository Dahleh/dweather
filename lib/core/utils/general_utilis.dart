import 'package:dweather/core/utils/utlis_const.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';

class GeneralUtilis {
  static Future<void> signinOrQidValidationNavigation({
    bool? isFromSigninRequiredDialog,
    bool? isSignInBackButton,
    String? qatarID,
    bool? isQatarIDValidationScreenBackButton,
    bool? isFromSplashScreen,
  }) async {
    // final localStorage = LocalStorage();
    // bool? isLoggedInOneTime = localStorage.getIsLoggedInOneTime();
    // if (isLoggedInOneTime == true) {
    //   AppNavigation.navigateTo(
    //       navigatorState.currentContext!,
    //       SigninPage(
    //         isFromSigninRequiredDialog: isFromSigninRequiredDialog,
    //         isBackButton: isSignInBackButton,
    //         qatarID: qatarID,
    //       ));
    // } else {
    //   AppNavigation.navigateTo(
    //       navigatorState.currentContext!,
    //       QatarIDValidationScreen(
    //         isFromSigninRequiredDialog: isFromSigninRequiredDialog,
    //         isSignInBackButton: isSignInBackButton,
    //         isBackButton: isQatarIDValidationScreenBackButton,
    //         isFromSplashScreen: isFromSplashScreen,
    //       ));
    // }
  }

  static Future<List<String>> getDeviceDetails() async {
    String? deviceName;
    String? deviceVersion;
    String? identifier;
    String? platform;
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceName = build.model;
        deviceVersion = build.version.release.toString();
        identifier = build.id; //UUID for Android
        platform = Platform.operatingSystem;
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        platform = Platform.operatingSystem;
        identifier = data.identifierForVendor ?? ""; //UUID for iOS
      }
    } on PlatformException {
      log('Failed to get platform version');
    }

//if (!mounted) return;
    return [deviceName!, deviceVersion!, identifier!, platform!];
  }

  static Future<DateTime?> displayDatePicker({
    required DateTime lastDate,
    required DateTime firstDate,
    DateTime? initialDate,
    required BuildContext context,
  }) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate,
      lastDate: lastDate,
      helpText: "",
      locale: const Locale('en'), // Set locale to English
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.kPrimaryColor,
              onPrimary: AppColors.kLightPrimaryColor,
              onSurface: AppColors.kBlackColor,
            ),
            datePickerTheme: const DatePickerThemeData(
              backgroundColor: Colors.white,
              headerBackgroundColor: AppColors.kPrimaryColor,
              headerForegroundColor: AppColors.kWhiteColor,
              surfaceTintColor: Colors.transparent,
              dividerColor: Colors.transparent,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.kBlackColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    return date;
  }

  Future<void> showErrorBottomModalSheet(
    BuildContext context,
    String text, {
    bool isTitleVisible = true,
    bool? isAlertIconVisible = true,
  }) async {
    final AnimationController controller = AnimationController(
      vsync: Navigator.of(context),
      duration: const Duration(milliseconds: 500),
    );

    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      // transitionAnimationController: controller,
      context: context,
      builder: (context) {
        return AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget? child) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            isShowingErrorDialog = false;
                            controller.reverse();
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.cancel,
                              color: AppColors.iconColor)),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  // if (isAlertIconVisible != true && isTitleVisible != true) ...[
                  //   SizedBox(height: 10.h),
                  // ],

                  // if (isAlertIconVisible == true) ...[
                  //   SizedBox(
                  //       width: 60,
                  //       height: 60,
                  //       child: Lottie.asset(AssetPath.errorLottie,
                  //           fit: BoxFit.cover)),
                  //   const SizedBox(height: 10),
                  // ],

                  // if (isTitleVisible == true) ...[
                  //   Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Icon(
                  //         Icons.info,
                  //         size: 18.r,
                  //         color: AppColors.kPrimaryColor,
                  //       ),
                  //       SizedBox(width: 5.w),
                  //       CustomText(
                  //         title: LocaleKeys.information.tr(),
                  //         textColor: AppColors.kTitleTextColor,
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.w700,
                  //       ),
                  //     ],
                  //   ),
                  //   const SizedBox(height: 10),
                  // ],
                  CustomText(
                    textAlign: TextAlign.center,
                    title: text,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        isShowingErrorDialog = false;
                        controller.reverse();
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.kLightPrimaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                      child: const CustomText(
                        title: "Ok",
                        textColor: AppColors.kTitleTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
    await controller.forward();
    isShowingErrorDialog = false;
    controller.dispose();
  }

  Future<void> showFlushBar(context, text,
      {color, duration, flushbarPosition, IconData? icon, Color? iconColor}) {
    return Flushbar(
      icon:
          Icon(icon ?? Icons.error, color: iconColor ?? AppColors.kWhiteColor),
      flushbarPosition: flushbarPosition ?? FlushbarPosition.TOP,
      barBlur: 20.0,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      borderRadius: BorderRadius.circular(8.0),
      backgroundColor: color ?? Colors.red,
      messageText: CustomText(
        title: text,
        fontWeight: FontWeight.w500,
        fontSize: 15,
        textColor: AppColors.kWhiteColor,
      ),
      blockBackgroundInteraction: true,
      duration: duration ?? const Duration(seconds: 5),
    ).show(context);
  }

  String idGenerator() {
    final now = DateTime.now();
    return now.microsecondsSinceEpoch.toString();
  }

  Widget overlayLoadingWidget({bool? visible, double? elevation}) {
    return Visibility(
      visible: visible == true ? true : false,
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        elevation: elevation,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: Colors.transparent,
        child: const CustomLoaderAnimation(),
      ),
    );
  }

  bool getIsLanguageDirectionLTR() {
    String? languageCode = "en";
    switch (languageCode) {
      case "en":
        return true;
      case "ar":
        return false;
      case "ur":
        return false;
      case "hi":
        return true;
      case "id":
        return true;
      case "bn":
        return true;
      case "tl":
        return true;
      case "ne":
        return true;
      case "ml":
        return true;
      case "si":
        return true;
      default:
        return true;
    }
  }

  bool isArabicLanguageSelected() {
    String? languageCode = "en";
    switch (languageCode) {
      case "ar":
        return true;
      default:
        return false;
    }
  }

  String getProductDeliveryImageLanguage() {
    String? languageCode = "en";
    switch (languageCode) {
      case "en":
        return AssetPath.deliveryBannerEnglishImage;
      case "ar":
        return AssetPath.deliveryBannerArabicImage;
      case "ur":
        return AssetPath.deliveryBannerUrduImage;
      case "hi":
        return AssetPath.deliveryBannerHindiImage;
      case "id":
        return AssetPath.deliveryBannerIndonesiaImage;
      case "bn":
        return AssetPath.deliveryBannerBangaliImage;
      case "tl":
        return AssetPath.deliveryBannerTagalogImage;
      case "ne":
        return AssetPath.deliveryBannerNepaliImage;
      case "ml":
        return AssetPath.deliveryBannerMalyalamImage;
      case "si":
        return AssetPath.deliveryBannerSinhalesemage;
      default:
        return AssetPath.deliveryBannerEnglishImage;
    }
  }
}
