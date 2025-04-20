import 'dart:ui';

import 'package:dweather/core/utils/utlis_const.dart';

class SigninOrGuestSigninDialog extends StatelessWidget {
  final String? title, content, signinButtonText, guestModeButtonText;
  final void Function()? onTapSigninButton,
      onTapGuestModeButton,
      onTapCancelButton;
  const SigninOrGuestSigninDialog({
    super.key,
    this.title,
    this.content,
    this.signinButtonText,
    this.guestModeButtonText,
    this.onTapSigninButton,
    this.onTapGuestModeButton,
    this.onTapCancelButton,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          shadowColor: Colors.transparent,
          elevation: 0,
          content: Stack(
            children: [
              Container(
                width: 1.sw,
                // height:
                //     CustomScreenUtil.isTablet() == true ? (150.h) : null,
                margin: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 20.h),
                          CustomText(
                            title: title ?? "",
                            textAlign: TextAlign.center,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.kBlackColor,
                          ),
                          SizedBox(height: 15.h),
                          CustomText(
                            title: content ?? "",
                            textAlign: TextAlign.center,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.labelColor,
                          ),
                          SizedBox(height: 15.h),
                        ],
                      ),
                    ),
                    const Divider(color: AppColors.kDividerColor, height: 0),
                    CustomButton(
                      onTap: onTapSigninButton,
                      title: signinButtonText ?? "",
                      textColor: AppColors.kPrimaryColor,
                      titleFontSize: 17,
                      titleFontWeight: FontWeight.w400,
                      enableButton: true,
                      verticalPadding: 0,
                      bgColor: Colors.transparent,
                    ),
                    const Divider(color: AppColors.kDividerColor, height: 0),
                    CustomButton(
                      onTap: onTapGuestModeButton,
                      title: guestModeButtonText ?? "",
                      textColor: AppColors.kPrimaryColor,
                      titleFontSize: 17,
                      titleFontWeight: FontWeight.w400,
                      enableButton: true,
                      verticalPadding: 0,
                      bgColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  onTap: onTapCancelButton,
                  child: Container(
                    width: 40.r,
                    height: 40.r,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.kDividerColor),
                    ),
                    child: Image.asset(AssetPath.closeIcon, height: 25.r),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
