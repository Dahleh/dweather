import 'package:dweather/core/utils/utlis_const.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class CustomTextFormField extends StatelessWidget {
  final String? hintText, label, errorKey, errorMessage, prefixText;
  final bool? obscureText, isCollapsed, textFieldReadOnly, isRequired;
  final TextEditingController? textController;
  final Function(String?)? onChange;
  final FocusNode? focusNode;
  final int? errorMaxLines, maxLines, maxLength;
  final double? hintSize,
      textSize,
      verticalPadding,
      horizontalPadding,
      contentPaddingVertical,
      contentPaddingHorizontal;
  final IconData? suffix, prefix;
  final Color? borderColor,
      filledColor,
      hintColor,
      textColor,
      cursorColor,
      prefixIconColor,
      suffixColor;
  final TextInputType? keyBoardType;
  final List<TextInputFormatter>? textInputFormatter;
  final Function()? onTextFieldTap, onSuffixIconTap;
  final String? Function(String?)? onValidate;
  final Paint? foreground;
  final bool isEditable, underlineInputBorder;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Widget? prefixWidget, suffixWidget;
  final TextAlign? fieldTextAlign;
  final TextCapitalization? textCapitalization;
  final ui.TextDirection? textDirection;
  final ui.TextDirection? hintTextDirection;
  final AutovalidateMode? autovalidateMode;

  const CustomTextFormField({
    super.key,
    this.focusNode,
    this.textController,
    this.hintText,
    this.obscureText,
    this.errorMaxLines,
    this.onValidate,
    this.maxLines,
    this.hintSize,
    this.textSize,
    this.isCollapsed,
    this.borderColor,
    this.filledColor,
    this.hintColor,
    this.textColor,
    this.cursorColor,
    this.keyBoardType,
    this.textInputFormatter,
    this.textFieldReadOnly,
    this.onTextFieldTap,
    this.prefixIconColor,
    this.onSuffixIconTap,
    this.onChange,
    this.suffixColor,
    this.prefix,
    this.suffix,
    this.foreground,
    this.isEditable = true,
    this.label,
    this.errorKey,
    this.verticalPadding,
    this.horizontalPadding,
    this.textInputAction,
    this.onFieldSubmitted,
    this.underlineInputBorder = false,
    this.errorMessage,
    this.prefixWidget,
    this.suffixWidget,
    this.maxLength,
    this.prefixText,
    this.contentPaddingVertical = 20,
    this.contentPaddingHorizontal = 15.0,
    // this.fieldTextAlign = TextAlign.start,
    this.fieldTextAlign,
    this.isRequired = false,
    this.textCapitalization,
    this.textDirection,
    this.hintTextDirection,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
  });

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = const Locale("en");
    var hintTextStyle = TextStyle(
      fontSize: hintSize?.sp ?? 14.0.sp,
      color: hintColor ?? AppColors.kGreyColor,
      fontWeight: FontWeight.w300,
      fontFamily: getFontFamilyByLanguage(currentLocale: currentLocale),
    );
    var fieldTextStyle = TextStyle(
      fontSize: textSize?.sp ?? 14.0.sp,
      color: textColor ?? AppColors.kBlackColor,
      fontWeight: FontWeight.w300,
      fontFamily: getFontFamilyByLanguage(currentLocale: currentLocale),
    );
    bool isLanguageDirectionLTR = GeneralUtilis().getIsLanguageDirectionLTR();
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 10, horizontal: horizontalPadding ?? 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: label != null && label != '',
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: CustomText(
                      title: label,
                      height: 1.5,
                      textColor: textController?.text.isEmpty == true
                          ? AppColors.labelColor
                          : AppColors.kPrimaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Visibility(
                    visible: isRequired == true ? true : false,
                    child: const CustomText(
                      title: "*",
                      height: 1.5,
                      textColor: AppColors.kRedColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextFormField(
            textDirection: isLanguageDirectionLTR == true
                ? ui.TextDirection.ltr
                : ui.TextDirection.ltr,
            enabled: isEditable,
            controller: textController,
            validator: onValidate,
            onTap: onTextFieldTap,
            focusNode: focusNode,
            readOnly: textFieldReadOnly ?? false,
            autovalidateMode:
                autovalidateMode ?? AutovalidateMode.onUserInteraction,
            maxLength: maxLength,
            onChanged: onChange ?? (value) {},
            textCapitalization:
                textCapitalization ?? TextCapitalization.sentences,
            textInputAction: textInputAction,
            onFieldSubmitted: onFieldSubmitted,
            // textAlign: fieldTextAlign ?? TextAlign.start,
            textAlign: fieldTextAlign ??
                (isLanguageDirectionLTR == true
                    ? TextAlign.start
                    : TextAlign.end),
            decoration: inputDecoration(
              hintTextDirection: isLanguageDirectionLTR == true
                  ? ui.TextDirection.ltr
                  : ui.TextDirection.ltr,
              textController: textController,
              hintTextStyle: hintTextStyle,
              prefixWidgett: prefixWidget,
              isUnderlineInputBorder: underlineInputBorder,
              prefixText: prefixText,
              textSize: textSize,
              textColor: textColor,
              contentPaddingVertical: contentPaddingVertical,
              contentPaddingHorizontal: contentPaddingHorizontal,
              borderColor: borderColor,
              isCollapsed: isCollapsed,
              hintText: hintText,
              errorMessage: errorMessage,
              prefix: prefix,
              suffix: suffix,
              suffixWidget: suffixWidget,
              onSuffixIconTap: onSuffixIconTap,
              errorMaxLines: errorMaxLines,
              filledColor: (isEditable == false && filledColor == null)
                  ? AppColors.kLightGreyColor
                  : filledColor,
            ),
            style: fieldTextStyle,
            keyboardType: keyBoardType ?? TextInputType.emailAddress,
            obscureText: obscureText ?? false,
            cursorColor: cursorColor ?? Colors.black,
            maxLines: maxLines ?? 1,
            inputFormatters: textInputFormatter ?? [],
          ),
        ],
      ),
    );
  }
}
