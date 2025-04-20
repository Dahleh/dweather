import 'package:dweather/core/utils/utlis_const.dart';

class CustomDropDowns<T> extends StatefulWidget {
  final T? value;
  final List<T>? items;
  final Function(T)? onChange;
  final String? hint;
  final bool title;
  final bool keyLabel;
  final String? label;
  final double? verticalPadding, horizontalPadding;
  final Color? iconColor,
      borderColor,
      bgColor,
      hintTextColor,
      selectedValueColor,
      suffixIconColor;
  final IconData? suffixIcon;
  final bool? isRequired;
  final bool? isTitleCase;
  final FocusNode? focusNode;

  const CustomDropDowns({
    super.key,
    this.value,
    this.onChange,
    this.hint,
    this.items,
    this.title = true,
    this.keyLabel = false,
    this.suffixIcon,
    this.iconColor,
    this.borderColor,
    this.bgColor,
    this.hintTextColor,
    this.selectedValueColor,
    this.suffixIconColor,
    this.label,
    this.verticalPadding,
    this.horizontalPadding,
    this.isRequired = false,
    this.isTitleCase = true,
    this.focusNode,
  });

  @override
  State<CustomDropDowns> createState() => _CustomDropDownsState();
}

class _CustomDropDownsState extends State<CustomDropDowns> {
  @override
  Widget build(BuildContext context) {
    Color filledColor = (widget.onChange == null)
        ? AppColors.kLightGreyColor
        : widget.bgColor ?? AppColors.kWhiteColor;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.verticalPadding ?? 10,
          horizontal: widget.horizontalPadding ?? 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: widget.label != null && widget.label != '',
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: CustomText(
                      title: widget.label,
                      height: 1.5,
                      textColor: widget.value == null
                          ? AppColors.labelColor
                          : AppColors.kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Visibility(
                    visible: widget.isRequired == true ? true : false,
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
          widget.suffixIcon == null
              ? InputDecorator(
                  decoration: inputDecoration(
                    selectedValue: widget.value,
                    contentPaddingVertical: 20,
                    isFieldDecoration: false,
                    filledColor: filledColor,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      focusNode: widget.focusNode,
                      isDense: true,
                      isExpanded: true,
                      dropdownColor: filledColor,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: widget.iconColor ?? AppColors.kTitleTextColor,
                      ),
                      hint: CustomText(
                        title: widget.hint,
                        textColor: widget.hintTextColor ?? AppColors.kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                      value: widget.value,
                      items: widget.items!
                          .map<DropdownMenuItem>((e) => DropdownMenuItem(
                              value: e,
                              child: CustomText(
                                title: widget.title == true
                                    ? e.toString().toUpperCase()
                                    : widget.keyLabel == true
                                        ? e.fullName != null
                                            ? e.fullName
                                                .toString()
                                                .toUpperCase()
                                            : e.username
                                                .toString()
                                                .toUpperCase()
                                        : widget.isTitleCase == true
                                            ? e.name.toString().toUpperCase()
                                            : e.name.toString(),
                                textColor: widget.selectedValueColor ??
                                    AppColors.kBlackColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                maxLines: 1,
                              )))
                          .toList(),
                      onChanged: widget.onChange,
                    ),
                  ),
                )
              : Row(
                  children: [
                    Icon(
                      widget.suffixIcon,
                      size: 20,
                      color: widget.suffixIconColor ??
                          AppColors.kBlackColor.withOpacity(0.5),
                    ),
                    const SizedBox(width: 15),
                    Flexible(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          focusNode: widget.focusNode,
                          isDense: true,
                          isExpanded: true,
                          dropdownColor: filledColor,
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: widget.iconColor ?? Colors.black,
                          ),
                          hint: CustomText(
                            title: widget.hint,
                            textColor: widget.hintTextColor ??
                                Colors.black.withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          value: widget.value,
                          items: widget.items!
                              .map<DropdownMenuItem>((e) => DropdownMenuItem(
                                  value: e,
                                  child: CustomText(
                                    title: widget.title == true
                                        ? e.toString()
                                        : widget.keyLabel == true
                                            ? e.label.toString()
                                            : e.name.toString().toUpperCase(),
                                    textColor: widget.selectedValueColor ??
                                        Colors.black,
                                    fontWeight: FontWeight.w400,
                                    maxLines: 1,
                                  )))
                              .toList(),
                          onChanged: widget.onChange,
                        ),
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
