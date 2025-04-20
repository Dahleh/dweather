import 'dart:ui';
// import 'dart:math' as math;
import 'package:dweather/core/utils/utlis_const.dart';

class GoldProductsDelvieryDialog extends StatelessWidget {
  const GoldProductsDelvieryDialog({super.key});

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
          insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
          content: SingleChildScrollView(
            child: Stack(
              children: [
                // Container(
                //   margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                //   width: 1.sw,
                //   height: 500.h,
                //   decoration: BoxDecoration(
                //     color: const Color(0xffE6E6E6),
                //     borderRadius: BorderRadius.all(Radius.circular(15.r)),
                //   ),
                //   child: Stack(
                //     children: [
                //       Transform(
                //         alignment: Alignment.center,
                //         transform:
                //             GeneralUtilis().getIsLanguageDirectionLTR() == true
                //                 ? Matrix4.rotationY(0)
                //                 : Matrix4.rotationY(math.pi),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.all(Radius.circular(15.r)),
                //           child: Image.asset(
                //             AssetPath.productsDeliveryDialogImage,
                //             height: 500.h,
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //       ),
                //       Container(
                //         padding: EdgeInsets.symmetric(
                //             horizontal: 20.w, vertical: 20.h),
                //         height: 500.h,
                //         child: Column(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             const Spacer(),
                //             CustomText(
                //               title:
                //                   LocaleKeys.experience_our.tr().toUpperCase(),
                //               fontSize: 20,
                //               fontWeight: FontWeight.w700,
                //               textColor: AppColors.kBlackColor,
                //             ),
                //             CustomText(
                //               title: LocaleKeys.secure_delivery_service
                //                   .tr()
                //                   .toUpperCase(),
                //               fontSize: 20,
                //               fontWeight: FontWeight.w700,
                //               textColor: AppColors.kBlackColor,
                //             ),
                //             SizedBox(height: 30.h),
                //             SizedBox(
                //               width: 1.sw,
                //               child: Wrap(
                //                 alignment: WrapAlignment.center,
                //                 crossAxisAlignment: WrapCrossAlignment.end,
                //                 direction: Axis.horizontal,
                //                 spacing: 10.w,
                //                 runSpacing: 10.h,
                //                 children: [
                //                   Image.asset(
                //                     AssetPath.goldBarImageForDialogImage,
                //                     width: 135.r,
                //                     height: 135.r,
                //                   ),
                //                   Image.asset(
                //                     AssetPath.tructImageForGoldProductsImage,
                //                     width: 120.r,
                //                     height: 70.r,
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const Spacer(),
                //             SizedBox(
                //               width: 1.sw,
                //               height: 48.h,
                //               child: ElevatedButton(
                //                 onPressed: () =>
                //                     AppNavigation.navigatorPop(context),
                //                 style: TextButton.styleFrom(
                //                   elevation: 0,
                //                   backgroundColor: AppColors.kWhiteColor,
                //                   shape: RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.all(
                //                         Radius.circular(100.r)),
                //                     side: const BorderSide(
                //                         color: AppColors.kPrimaryColor),
                //                   ),
                //                   overlayColor: AppColors.kWhiteColor,
                //                 ),
                //                 child: CustomText(
                //                   title: LocaleKeys.close.tr(),
                //                   fontSize: 16,
                //                   fontWeight: FontWeight.w400,
                //                   textColor: AppColors.kPrimaryColor,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  width: 1.sw,
                  margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xffE6E6E6),
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    child: Image.asset(
                      GeneralUtilis().getProductDeliveryImageLanguage(),
                      errorBuilder: (context, error, stackTrace) =>
                          const SizedBox(),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () => AppNavigation.navigatorPop(context),
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
      ),
    );
  }
}
