import 'package:dweather/core/utils/utlis_const.dart';

class Error501HandlingBottomModalSheet extends StatelessWidget {
  // final AnimationController controller;
  final String text;
  final void Function()? onPressedContinueBtn, onPressedCancelBtn;
  final String continueButtonLabel, cancelButttonLabel;
  final String? title;
  const Error501HandlingBottomModalSheet({
    super.key,
    // required this.controller,
    this.onPressedContinueBtn,
    this.onPressedCancelBtn,
    required this.continueButtonLabel,
    required this.cancelButttonLabel,
    required this.text,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    // controller.reverse();
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.cancel, color: AppColors.iconColor)),
            ],
          ),
          // SizedBox(
          //     width: 60,
          //     height: 60,
          //     child: Lottie.asset(AssetPath.errorLottie, fit: BoxFit.cover)),
          // const SizedBox(height: 10),
          CustomText(
            title: title ?? "Alert",
            textColor: AppColors.kTitleTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 10),
          CustomText(
            textAlign: TextAlign.center,
            title: text,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  // width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressedCancelBtn ?? () {},
                    // () {
                    // controller.reverse();
                    // Navigator.pop(context);
                    // onPressedCancelBtn ?? () {};
                    // },
                    style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.kLightPrimaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    child: CustomText(
                      title: cancelButttonLabel,
                      textColor: AppColors.kTitleTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: SizedBox(
                  // width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressedContinueBtn ?? () {},
                    // () {
                    // controller.reverse();
                    // Navigator.pop(context);

                    // },
                    style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.kLightPrimaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    child: CustomText(
                      title: continueButtonLabel,
                      textColor: AppColors.kTitleTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ErrorIPIDHandlingBottomModalSheet extends StatelessWidget {
  // final AnimationController controller;

  final void Function()? onPressedContinueBtn, onPressedCancelBtn;
  final String continueButtonLabel, cancelButttonLabel;
  final String? title, matchedScore;
  final String? validationStatus;
  const ErrorIPIDHandlingBottomModalSheet({
    super.key,
    // required this.controller,
    this.onPressedContinueBtn,
    this.onPressedCancelBtn,
    required this.continueButtonLabel,
    required this.cancelButttonLabel,
    required this.title,
    required this.matchedScore,
    required this.validationStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    // controller.reverse();
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.cancel, color: AppColors.iconColor)),
            ],
          ),
          SizedBox(
              width: 60,
              height: 60,
              child: Image.asset(AssetPath.successLottie, fit: BoxFit.cover)),
          const SizedBox(height: 10),
          const CustomText(
            title: "Validation Status",
            textAlign: TextAlign.center,
            textColor: AppColors.kTitleTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 10),
          if (validationStatus != null &&
              validationStatus != "" &&
              validationStatus?.isNotEmpty == true)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  title: "Account Validation: ",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                Flexible(
                  child: CustomText(
                    title: "${validationStatus?.toUpperCase()}",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          if (title != null && title != "" && title?.isNotEmpty == true)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  title: "Title: ",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                Flexible(
                  child: CustomText(
                    title: "${title?.toUpperCase()}",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          if (matchedScore != null &&
              matchedScore != "" &&
              matchedScore?.isNotEmpty == true)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  title: "Matched score: ",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                Flexible(
                  child: CustomText(
                    title: "${matchedScore?.toUpperCase()}",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  // width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressedCancelBtn ?? () {},
                    // () {
                    // controller.reverse();
                    // Navigator.pop(context);
                    // onPressedCancelBtn ?? () {};
                    // },
                    style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.kLightPrimaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    child: CustomText(
                      title: cancelButttonLabel,
                      textColor: AppColors.kTitleTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: SizedBox(
                  // width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressedContinueBtn ?? () {},
                    // () {
                    // controller.reverse();
                    // Navigator.pop(context);

                    // },
                    style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.kLightPrimaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    child: CustomText(
                      title: continueButtonLabel,
                      textColor: AppColors.kTitleTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
