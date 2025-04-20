import 'package:dweather/core/utils/utlis_const.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final double? fontSize, height;
  final Color? textColor, decorationColor, backgroundColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final bool? softWrap;
  final TextDecoration? textDecoration;
  final Paint? foreGround;
  final Function()? onTap;
  final FontStyle? fontStyle;
  const CustomText({
    super.key,
    this.title,
    this.fontSize,
    this.textDecoration,
    this.softWrap,
    this.textOverflow,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.onTap,
    this.textColor,
    this.foreGround,
    this.height,
    this.decorationColor,
    this.fontStyle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = const Locale("en");
    return GestureDetector(
      onTap: onTap,
      child: AutoSizeText(
        title ?? '',
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: textOverflow,
        softWrap: softWrap,
        // textScaleFactor: 1.0,
        style: TextStyle(
          // fontSize: fontSize,
          fontSize: fontSize?.sp,
          color: textColor,
          height: height,
          backgroundColor: backgroundColor,
          fontWeight: fontWeight,
          decoration: textDecoration,
          foreground: foreGround,
          decorationColor: decorationColor,
          fontFamily: getFontFamilyByLanguage(currentLocale: currentLocale),
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}
