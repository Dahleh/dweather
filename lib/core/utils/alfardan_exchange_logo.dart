import 'utlis_const.dart';

class AlfardanExchangeLogo extends StatelessWidget {
  final double? width, height;

  const AlfardanExchangeLogo({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetPath.alfardanLogoImage,
        width: width, height: height);
  }
}
