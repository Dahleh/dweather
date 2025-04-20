import 'utlis_const.dart';

class CustomLoaderAnimation extends StatefulWidget {
  const CustomLoaderAnimation({super.key});

  @override
  _CustomLoaderAnimationState createState() => _CustomLoaderAnimationState();
}

class _CustomLoaderAnimationState extends State<CustomLoaderAnimation>
    with TickerProviderStateMixin {
  // late AnimationController _controller;

  // @override
  // void initState() {
  //   super.initState();

  //   _controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 2),
  //   )..repeat();
  // }

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(color: AppColors.kPrimaryColor));

    // return Center(
    //   child: Container(
    //     decoration: const BoxDecoration(
    //       color: AppColors.kSecondaryColor,
    //       shape: BoxShape.circle,
    //     ),
    //     child: Stack(
    //       alignment: Alignment.center,
    //       children: [
    //         RotationTransition(
    //           turns: _controller,
    //           child: Image.asset(
    //             AssetPath.appLogo, // replace with your logo path
    //             width: 50, // adjust size as needed
    //             height: 50,
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 50, // Same as the logo size
    //           height: 50,
    //           child: CircularProgressIndicator(
    //             strokeWidth: 3,
    //             valueColor:
    //                 AlwaysStoppedAnimation<Color>(AppColors.kPrimaryColor),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
}
