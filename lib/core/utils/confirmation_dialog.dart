import 'dart:ui' as ui;

import 'package:dweather/core/utils/utlis_const.dart';

class ConfirmationDialog extends StatelessWidget {
  final String? title, content, rightBtnText, leftBtnText;
  final void Function()? onTapRightBtn, onTapLeftBtn;
  final bool? isRightBtnEnable, isLeftBtnEnable;

  const ConfirmationDialog({
    super.key,
    this.title,
    this.content,
    this.rightBtnText,
    this.leftBtnText,
    this.onTapRightBtn,
    this.onTapLeftBtn,
    this.isRightBtnEnable,
    this.isLeftBtnEnable,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          shadowColor: Colors.transparent,
          elevation: 0,
          content: Container(
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      if (isLeftBtnEnable == true) ...[
                        Expanded(
                          child: CustomButton(
                            onTap: onTapLeftBtn ?? () {},
                            title: leftBtnText ?? "",
                            textColor: AppColors.kWhiteColor,
                            titleFontSize: 14,
                            titleFontWeight: FontWeight.w400,
                            enableButton: isLeftBtnEnable ?? true,
                            verticalPadding: 0,
                            bgColor: AppColors.kPrimaryColor,
                            buttonHeight: 44.h,
                          ),
                        ),
                        SizedBox(width: 10.w),
                      ],
                      Expanded(
                        child: CustomButton(
                          onTap: onTapRightBtn ?? () {},
                          title: rightBtnText ?? "",
                          textColor: AppColors.kWhiteColor,
                          titleFontSize: 14,
                          titleFontWeight: FontWeight.w400,
                          enableButton: isRightBtnEnable ?? true,
                          verticalPadding: 0,
                          bgColor: AppColors.kPrimaryColor,
                          buttonHeight: 44.h,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
