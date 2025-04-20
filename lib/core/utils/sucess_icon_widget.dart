import 'package:dweather/core/utils/utlis_const.dart';

class SuccessIconWidget extends StatelessWidget {
  const SuccessIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.r),
      decoration: BoxDecoration(
        color: AppColors.kLightPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(100.r)),
      ),
      child: Container(
        padding: EdgeInsets.all(15.r),
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(100.r)),
        ),
        child:
            Icon(Icons.check_rounded, color: AppColors.kWhiteColor, size: 30.r),
      ),
    );
  }
}
