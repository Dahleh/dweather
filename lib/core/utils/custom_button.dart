import 'package:dweather/core/utils/utlis_const.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Color? textColor, bgColor, borderColor, shadowColor;
  final Function()? onTap;
  final Function()? onDisableTap;
  final double? verticalPadding,
      horizontalPadding,
      titleFontSize,
      buttonHeight,
      buttonWidth;
  final bool enableButton;
  final EdgeInsetsGeometry? padding;
  final FontWeight? titleFontWeight;
  final Gradient? gradient;
  final bool? isIconBtn;
  final String? assetIconPath;
  final bool? isCenteredAlign;
  final IconData? postfixIcon;
  final bool? isLoading;

  const CustomButton({
    super.key,
    this.title,
    this.onTap,
    this.onDisableTap,
    this.textColor,
    this.bgColor,
    this.verticalPadding,
    this.horizontalPadding,
    this.borderColor,
    this.enableButton = true,
    this.padding,
    this.titleFontSize = 16,
    this.titleFontWeight = FontWeight.w400,
    this.buttonHeight = 52,
    this.gradient,
    this.shadowColor,
    this.isIconBtn = false,
    this.assetIconPath,
    this.buttonWidth,
    this.isCenteredAlign = true,
    this.postfixIcon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 0,
              vertical: verticalPadding ?? 10),
      child: GestureDetector(
        onTap: enableButton == true ? onTap : onDisableTap,
        child: Container(
          height: buttonHeight?.h,
          width: buttonWidth?.w,
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
              color: bgColor,
              boxShadow: [
                BoxShadow(
                  color: shadowColor ?? Colors.white.withOpacity(0.25),
                  offset: const Offset(0, 2),
                  blurRadius: 11.r,
                  spreadRadius: 0,
                ),
              ],
              gradient: enableButton == true
                  ? gradient ??
                      const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(200, 147, 40, 0.67),
                          Color.fromRGBO(200, 147, 40, 1)
                        ],
                      )
                  : const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffececec), Color(0xffc7c9c7)],
                    ),
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
              border: Border.all(color: borderColor ?? Colors.transparent)),
          child: isLoading == true
              ? const Center(child: CustomLoaderAnimation())
              : Visibility(
                  visible: isIconBtn == true,
                  // replacement: Center(child: _customText()),
                  replacement: isCenteredAlign == true
                      ? Center(child: _customText())
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(child: _customText()),
                            if (postfixIcon != null)
                              Icon(postfixIcon,
                                  color: textColor ?? AppColors.kWhiteColor,
                                  size: 25.r),
                          ],
                        ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          assetIconPath.toString(),
                          errorBuilder: (context, error, stackTrace) =>
                              const SizedBox(),
                          width: 32.r,
                          height: 32.r,
                        ),
                        const SizedBox(width: 5),
                        _customText(),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  CustomText _customText() {
    return CustomText(
      textColor: textColor ?? AppColors.kWhiteColor,
      fontSize: titleFontSize,
      fontWeight: titleFontWeight,
      textAlign: TextAlign.center,
      title: title ?? "Continue",
      maxLines: 1,
      textOverflow: TextOverflow.ellipsis,
    );
  }
}
