import 'dart:ui';

import 'package:dweather/core/utils/utlis_const.dart';

class DeactivateAccountAlertDialog extends StatelessWidget {
  final String? title, content, continueBtnLabel, cancelBtnLabel;
  final void Function()? continueBtnOnTap, cancelBtnOnTap, closeBtnOnTap;
  final Color? continueBtnLabelColor, cancelBtnLabelColor;

  const DeactivateAccountAlertDialog({
    super.key,
    this.content,
    this.title,
    this.continueBtnOnTap,
    this.continueBtnLabel,
    this.continueBtnLabelColor,
    this.cancelBtnLabel,
    this.cancelBtnOnTap,
    this.cancelBtnLabelColor,
    this.closeBtnOnTap,
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
                margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                width: CustomScreenUtil.isTablet() == true ? 1.sw / 2 : 1.sw,
                //  height: CustomScreenUtil.isTablet() == true
                //         ? (1.sh - 50.h)
                //         : null,
                decoration: const BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20),
                          CustomText(
                            title: title ?? "",
                            textAlign: TextAlign.center,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.kBlackColor,
                          ),
                          const SizedBox(height: 15),
                          CustomText(
                            title: content ?? "",
                            textAlign: TextAlign.center,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.labelColor,
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                    const Divider(color: AppColors.kDividerColor, height: 0),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            onTap: cancelBtnOnTap ??
                                () => AppNavigation.navigatorPop(context),
                            title: cancelBtnLabel ?? "Cancel",
                            textColor:
                                cancelBtnLabelColor ?? AppColors.kPrimaryColor,
                            titleFontSize: 17,
                            titleFontWeight: FontWeight.w400,
                            enableButton: true,
                            verticalPadding: 0,
                            bgColor: Colors.transparent,
                          ),
                        ),
                        Container(
                          height: 52.h,
                          width: 1.w,
                          color: AppColors.kDividerColor,
                        ),
                        Expanded(
                          child: CustomButton(
                            onTap: continueBtnOnTap ?? () {},
                            title: continueBtnLabel ?? "",
                            textColor: continueBtnLabelColor ??
                                AppColors.kPrimaryColor,
                            titleFontSize: 17,
                            titleFontWeight: FontWeight.w400,
                            enableButton: true,
                            verticalPadding: 0,
                            bgColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  onTap: closeBtnOnTap ??
                      () => AppNavigation.navigatorPop(context),
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.kDividerColor),
                    ),
                    child: Image.asset(AssetPath.closeIcon, height: 25),
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
