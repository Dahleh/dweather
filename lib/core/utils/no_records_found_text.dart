import 'package:dweather/core/utils/utlis_const.dart';

class NoRecordsFoundText extends StatelessWidget {
  const NoRecordsFoundText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CustomText(
      title: "No Record Found",
      fontSize: 13,
      textColor: AppColors.kTitleTextColor,
    ));
  }
}
