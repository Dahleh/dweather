import 'package:dweather/core/utils/utlis_const.dart';
import 'dart:ui' as ui;

InputDecoration inputDecoration({
  dynamic selectedValue,
  bool? isFieldDecoration = true,
  TextEditingController? textController,
  TextStyle? hintTextStyle,
  Widget? prefixWidgett,
  bool? isUnderlineInputBorder = false,
  //
  String? prefixText,
  double? textSize,
  Color? textColor,
  double? contentPaddingVertical,
  double? contentPaddingHorizontal,
  Color? borderColor,
  bool? isCollapsed,
  String? hintText,
  String? errorMessage,
  IconData? prefix,
  IconData? suffix,
  Widget? suffixWidget,
  Function()? onSuffixIconTap,
  int? errorMaxLines,
  Color? filledColor,
  ui.TextDirection? hintTextDirection,
}) {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: (((textController?.text.trim().isEmpty == true &&
                      isFieldDecoration == true) ||
                  (selectedValue == null && isFieldDecoration == false))
              ? borderColor
              : AppColors.kPrimaryColor) ??
          AppColors.kGreyColor,
    ),
    borderRadius: BorderRadius.circular(30),
  );
  OutlineInputBorder outlineFocusInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: borderColor ?? AppColors.kPrimaryColor),
    borderRadius: BorderRadius.circular(30),
  );

  UnderlineInputBorder underlineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: (((textController?.text.trim().isEmpty == true &&
                      isFieldDecoration == true) ||
                  (selectedValue == null && isFieldDecoration == false))
              ? borderColor
              : AppColors.kPrimaryColor) ??
          AppColors.kGreyColor,
    ),
  );

  OutlineInputBorder outlineErrorInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.kRedColor),
    borderRadius: BorderRadius.circular(30),
  );

  UnderlineInputBorder underlineErrorInputBorder = const UnderlineInputBorder(
    borderSide: BorderSide(color: AppColors.kRedColor),
  );

  return InputDecoration(
    hintTextDirection: hintTextDirection,
    prefixText: prefixText ?? "",
    prefixStyle: TextStyle(
      fontSize: textSize?.sp ?? 14.0.sp,
      color: textColor ?? AppColors.kBlackColor,
      fontWeight: FontWeight.w400,
    ),
    contentPadding: EdgeInsets.symmetric(
        vertical: contentPaddingVertical ?? 0,
        horizontal: contentPaddingHorizontal ?? 15.0),
    border: isUnderlineInputBorder == true
        ? underlineInputBorder
        : outlineInputBorder,
    focusedErrorBorder: isUnderlineInputBorder == true
        ? underlineErrorInputBorder
        : outlineErrorInputBorder,
    errorBorder: isUnderlineInputBorder == true
        ? underlineErrorInputBorder
        : outlineErrorInputBorder,
    focusedBorder: isUnderlineInputBorder == true
        ? underlineInputBorder
        : outlineFocusInputBorder,
    enabledBorder: isUnderlineInputBorder == true
        ? underlineInputBorder
        : outlineInputBorder,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    isCollapsed: isCollapsed ?? true,
    hintText: hintText,
    errorText: errorMessage,
    hintStyle: hintTextStyle,
    errorStyle: TextStyle(
      fontSize: 13.0.sp,
      color: AppColors.kRedColor,
      fontWeight: FontWeight.w500,
    ),
    prefixIcon: prefix == null && prefixWidgett == null
        ? null
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: prefixWidgett ??
                Icon(
                  prefix!,
                  color: AppColors.kPrimaryColor,
                  // color: AppColors.kGreyColor,
                ),
          ),
    prefixIconConstraints: const BoxConstraints(maxHeight: 40), // 35
    suffixIcon: suffix == null && suffixWidget == null
        ? null
        : InkWell(
            onTap: onSuffixIconTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: suffixWidget ??
                  Icon(
                    suffix!,
                    color: AppColors.kGreyColor,
                  ),
            )),
    suffixIconConstraints: const BoxConstraints(maxHeight: 30),
    errorMaxLines: errorMaxLines ?? 3,
    fillColor: filledColor ?? AppColors.kSecondaryColor,
    filled: true,
  );
}
