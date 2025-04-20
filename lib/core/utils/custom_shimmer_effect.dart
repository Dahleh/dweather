import 'package:dweather/core/utils/utlis_const.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerWidget extends StatelessWidget {
  final double? width, height;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;
  final Color? baseColor;
  const CustomShimmerWidget(
      {super.key,
      this.width,
      this.height,
      this.borderRadius,
      this.child,
      this.baseColor});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: true,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius:
              borderRadius ?? const BorderRadius.all(Radius.circular(20)),
        ),
        child: child,
      ),
    );
  }
}
