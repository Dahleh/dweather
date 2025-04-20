import 'package:dweather/core/utils/utlis_const.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? errorMessage;
  final bool? isReloadBtnVisibile;
  final void Function()? onPressed;
  final Color? textColor, iconColor;
  final IconData? icon;
  final void Function()? onTapErrorMessage;
  const CustomErrorWidget({
    super.key,
    this.errorMessage,
    this.isReloadBtnVisibile = false,
    this.onPressed,
    this.iconColor,
    this.textColor,
    this.icon,
    this.onTapErrorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: isReloadBtnVisibile!,
            child: IconButton(
                onPressed: onPressed ?? () {},
                icon: Icon(icon ?? Icons.refresh_outlined,
                    size: 30, color: iconColor ?? AppColors.kCheckBoxColor)),
          ),
          Center(
            child: GestureDetector(
              onTap: onTapErrorMessage ?? () {},
              child: CustomText(
                textAlign: TextAlign.center,
                title: errorMessage,
                textColor: textColor ?? AppColors.kRedColor,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
