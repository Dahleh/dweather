import 'package:dweather/core/utils/utlis_const.dart';

AppBar customAppBar(
  context, {
  String? title,
  List? actions,
  bool isBackButton = true,
  bool isNotificationVisible = true,
  bool isLogoVisible = false,
  Function()? onBackPress,
}) =>
    AppBar(
      toolbarHeight: 80,
      leadingWidth: 90,
      leading: isBackButton
          ? Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: InkWell(
                onTap: onBackPress ?? () => AppNavigation.navigatorPop(context),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.kSecondaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          : const SizedBox(),
      backgroundColor: AppColors.kLightPrimaryColor,
      elevation: 0,
      centerTitle: true,
      title: CustomText(
        title: title,
        textColor: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      actions: [
        if (actions != null) ...actions,
        if (isLogoVisible == true) ...[
          const AlfardanExchangeLogo(),
          const SizedBox(width: 15),
        ]
      ],
    );
