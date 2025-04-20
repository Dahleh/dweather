// import 'package:dweather/core/utils/utlis_const.dart';
// import 'package:url_launcher/url_launcher.dart';

// class UrlLauncherService {
//   Future<void> _launcher({required Uri uri}) async {
//     try {
//       bool isLaunchURL = await canLaunchUrl(uri);
//       if (isLaunchURL == true) {
//         await launchUrl(uri);
//       } else {
//         GeneralUtilis().showErrorBottomModalSheet(
//             navigatorState.currentContext!,
//             '${LocaleKeys.could_not_launch.tr()} $uri');
//       }
//     } catch (e) {
//       GeneralUtilis().showErrorBottomModalSheet(
//           navigatorState.currentContext!, e.toString());
//     }
//   }

//   Future<void> launchGoogleMap({
//     required double startLng,
//     required double startLat,
//     required double destLat,
//     required double destLng,
//   }) async {
//     final mapUri = Uri(
//       scheme: 'https',
//       host: 'www.google.com',
//       path: '/maps/dir/',
//       queryParameters: {
//         'api': '1',
//         'origin': '$startLat,$startLng',
//         'destination': '$destLat,$destLng',
//       },
//     );

//     log("Uri $mapUri"); // Logs the correctly formatted URL

//     await _launcher(uri: mapUri);
//   }

//   // Launch whatsapp chat of AFX
//   Future<void> launchWhatsapp() async {
//     final whatsappUri =
//         Uri(scheme: 'https', path: '//wa.me/$supportPhoneNumber');
//     await _launcher(uri: whatsappUri);
//   }

//   // Launch support phone number of AFX
//   Future<void> launchCall() async {
//     final callUri = Uri(scheme: 'tel', path: supportPhoneNumber);
//     await _launcher(uri: callUri);
//   }

//   // Launch support email of AFX
//   Future<void> launchEmail() async {
//     DateTime currentDateTime = DateTime.now();
//     String uniquiIdentifier =
//         DateFormat("yyyyMMddHHmmss", 'en').format(currentDateTime);
//     final emailUri = Uri(
//       scheme: 'mailto',
//       path: supportEmailAddress,
//       query: 'subject=Mobile App Contact Us Email Inquiry $uniquiIdentifier',
//     );
//     await _launcher(uri: emailUri);
//   }

//   // Launch Url
//   Future<void> launchParameterizedCustomURL({required String? url}) async {
//     if (url != null) {
//       final urlUri = Uri.parse(url);
//       await _launcher(uri: urlUri);
//     }
//   }
// }
