import 'package:dweather/core/utils/utlis_const.dart';

class CustomDropdownField extends StatelessWidget {
  final double? hintSize;
  final Color? hintColor;
  final Color? cursorColor;
  final Widget? prefixWidget;
  final bool? underlineInputBorder;
  final Function(String?)? onChange;
  final String? selectedDropdownValue;
  final List<String>? dropdownItems;
  final String? label;
  final double? verticalPadding, horizontalPadding;
  final String? Function(String?)? onValidate;
  final Function()? onTextFieldTap;
  //
  final String? prefixText;
  final double? textSize;
  final Color? textColor;
  final double? contentPaddingVertical;
  final Color? borderColor;
  final bool? isCollapsed;
  final String? hintText;
  final String? errorMessage;
  final IconData? prefix;
  final IconData? suffix;
  final Widget? suffixWidget;
  final Function()? onSuffixIconTap;
  final int? errorMaxLines;
  final Color? filledColor;
  const CustomDropdownField({
    super.key,
    this.hintSize,
    this.hintColor,
    this.cursorColor,
    this.prefixWidget,
    this.underlineInputBorder = false,
    this.onChange,
    this.selectedDropdownValue,
    this.dropdownItems,
    this.label,
    this.verticalPadding,
    this.horizontalPadding,
    this.onValidate,
    this.onTextFieldTap,
    //
    this.prefixText,
    this.textSize,
    this.textColor,
    this.contentPaddingVertical = 20,
    this.borderColor,
    this.isCollapsed,
    this.hintText,
    this.errorMessage,
    this.prefix,
    this.suffix,
    this.suffixWidget,
    this.onSuffixIconTap,
    this.errorMaxLines,
    this.filledColor,
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
      fontWeight: FontWeight.w400,
      fontFamily: getFontFamilyByLanguage(currentLocale: currentLocale),
    );
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
              child: CustomText(
                title: label,
                height: 1.5,
                textColor: AppColors.labelColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          DropdownButtonFormField<String>(
            value: selectedDropdownValue,
            items: dropdownItems == null || dropdownItems!.isEmpty
                ? []
                : List.generate(
                    dropdownItems!.length,
                    (index) => DropdownMenuItem(
                      value: dropdownItems?[index],
                      child: Text(dropdownItems![index], style: fieldTextStyle),
                    ),
                  ),
            validator: onValidate,
            onChanged: onChange ?? (value) {},
            onTap: onTextFieldTap,
            alignment: Alignment.centerLeft,
            decoration: inputDecoration(
              hintTextStyle: hintTextStyle,
              prefixWidgett: prefixWidget,
              isUnderlineInputBorder: underlineInputBorder,
              //
              prefixText: prefixText,
              textSize: textSize,
              textColor: textColor,
              contentPaddingVertical: contentPaddingVertical,
              borderColor: borderColor,
              isCollapsed: isCollapsed,
              hintText: hintText,
              errorMessage: errorMessage,
              prefix: prefix,
              suffix: suffix,
              suffixWidget: suffixWidget,
              onSuffixIconTap: onSuffixIconTap,
              errorMaxLines: errorMaxLines,
              filledColor: filledColor,
            ),
            icon: const Icon(Icons.keyboard_arrow_down_rounded,
                color: AppColors.kTitleTextColor),
            hint: Text(hintText.toString(), style: hintTextStyle),
            style: fieldTextStyle,
            autovalidateMode: AutovalidateMode.disabled,
          ),
        ],
      ),
    );
  }
}

// class CustomDropdownField extends StatelessWidget {
//   final double? hintSize;
//   final Color? hintColor;
//   final Color? cursorColor;
//   final Widget? prefixWidget;
//   final bool? underlineInputBorder;
//   final Function(String?)? onChange;
//   final String? selectedDropdownValue;
//   final List<String>? dropdownItems;
//   final String? label;
//   final double? verticalPadding, horizontalPadding;
//   final String? Function(String?)? onValidate;
//   final Function()? onTextFieldTap;
//   //
//   final String? prefixText;
//   final double? textSize;
//   final Color? textColor;
//   final double? contentPaddingVertical;
//   final Color? borderColor;
//   final bool? isCollapsed;
//   final String? hintText;
//   final String? errorMessage;
//   final IconData? prefix;
//   final IconData? suffix;
//   final Widget? suffixWidget;
//   final Function()? onSuffixIconTap;
//   final int? errorMaxLines;
//   final Color? filledColor;
//   const CustomDropdownField({
//     super.key,
//     this.hintSize,
//     this.hintColor,
//     this.cursorColor,
//     this.prefixWidget,
//     this.underlineInputBorder = false,
//     this.onChange,
//     this.selectedDropdownValue,
//     this.dropdownItems,
//     this.label,
//     this.verticalPadding,
//     this.horizontalPadding,
//     this.onValidate,
//     this.onTextFieldTap,
//     //
//     this.prefixText,
//     this.textSize,
//     this.textColor,
//     this.contentPaddingVertical = 20,
//     this.borderColor,
//     this.isCollapsed,
//     this.hintText,
//     this.errorMessage,
//     this.prefix,
//     this.suffix,
//     this.suffixWidget,
//     this.onSuffixIconTap,
//     this.errorMaxLines,
//     this.filledColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     var hintTextStyle = TextStyle(
//       fontSize: hintSize ?? 14.0,
//       color: hintColor ?? AppColors.kGreyColor,
//       fontWeight: FontWeight.w300,
//     );
//     var fieldTextStyle = TextStyle(
//       fontSize: textSize ?? 14.0,
//       color: textColor ?? AppColors.kBlackColor,
//       fontWeight: FontWeight.w400,
//     );
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           vertical: verticalPadding ?? 10, horizontal: horizontalPadding ?? 0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Visibility(
//             visible: label != null && label != '',
//             child: Padding(
//               padding: const EdgeInsets.only(left: 5.0, bottom: 5),
//               child: CustomText(
//                 title: label,
//                 height: 1.5,
//                 textColor: AppColors.labelColor,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//           DropdownButtonFormField<String>(
//             value: selectedDropdownValue,
//             items: dropdownItems == null || dropdownItems!.isEmpty
//                 ? []
//                 : List.generate(
//                     dropdownItems!.length,
//                     (index) => DropdownMenuItem(
//                       value: dropdownItems?[index],
//                       child: Text(dropdownItems![index], style: fieldTextStyle),
//                     ),
//                   ),
//             validator: onValidate,
//             onChanged: onChange ?? (value) {},
//             onTap: onTextFieldTap,
//             alignment: Alignment.centerLeft,
//             decoration: inputDecoration(
//               hintTextStyle: hintTextStyle,
//               prefixWidgett: prefixWidget,
//               isUnderlineInputBorder: underlineInputBorder,
//               //
//               prefixText: prefixText,
//               textSize: textSize,
//               textColor: textColor,
//               contentPaddingVertical: contentPaddingVertical,
//               borderColor: borderColor,
//               isCollapsed: isCollapsed,
//               hintText: hintText,
//               errorMessage: errorMessage,
//               prefix: prefix,
//               suffix: suffix,
//               suffixWidget: suffixWidget,
//               onSuffixIconTap: onSuffixIconTap,
//               errorMaxLines: errorMaxLines,
//               filledColor: filledColor,
//             ),
//             icon: const Icon(Icons.keyboard_arrow_down_rounded,
//                 color: AppColors.kTitleTextColor),
//             hint: Text(hintText.toString(), style: hintTextStyle),
//             style: fieldTextStyle,
//             autovalidateMode: AutovalidateMode.disabled,
//           ),
//         ],
//       ),
//     );
//   }
// }
