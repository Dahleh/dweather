import 'dart:ui';
import 'package:dweather/core/utils/utlis_const.dart';

// ignore: must_be_immutable
class QIDExpiryGraceDialog extends StatelessWidget {
  final String? content;
  final void Function()? onTapContinueButton;
  final void Function()? onTapCrossButton;
  const QIDExpiryGraceDialog(
      {super.key,
      this.content,
      this.onTapContinueButton,
      this.onTapCrossButton});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
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
              width: CustomScreenUtil.isTablet() == true ? 1.sw / 2 : 1.sw,
              // height:
              //     CustomScreenUtil.isTablet() == true ? (1.sh - 50.h) : null,
              margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
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
                        const CustomText(
                          title: "Expired",
                          textAlign: TextAlign.center,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: CustomButton(
                          onTap: () {
                            // AppNavigation.navigatorPop(
                            //     navigatorState.currentContext!);
                            // AppNavigation.navigateTo(
                            //     navigatorState.currentContext!,
                            //     const IDMissionInstructionsPage(
                            //         journeyFrom:
                            //             IdMissionJourneysEnum.qidExpired));
                          },
                          title: "Upload",
                          textColor: AppColors.kPrimaryColor,
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
                          onTap: onTapContinueButton,
                          title: "Continue",
                          textColor: AppColors.kPrimaryColor,
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
                onTap: onTapCrossButton,
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
    );
  }
}
