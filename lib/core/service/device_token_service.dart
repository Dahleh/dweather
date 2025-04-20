// import '../utils/utlis_const.dart';

// class DeviceTokenService {
//   Future<String?> getHuaweiDeviceToken() async {
//     String? deviceToken = '';
//     try {
//       String agcAppID =
//           ApiConst.origin.contains('6995') == true ? "111366031" : "111070429";
//       // huawei_push.Push.getToken(agcAppID);
//       // await for (String token in huawei_push.Push.getTokenStream) {
//       //   deviceToken = token;
//       //   return deviceToken;
//       // }
//     } catch (e) {
//       GeneralUtilis().showFlushBar(
//         navigatorState.currentContext!,
//         e.toString(),
//         duration: const Duration(milliseconds: 1100),
//       );
//     }
//     return deviceToken;
//   }

//   Future<String?> _getAndroidAndIosDeviceToken() async {
//     // return await FirebaseMessaging.instance.getToken();
//   }

//   Future<String?> getDeviceTokenByDeviceType() async {
//     if (_isIosDevice() == true) {
//       return await _getAndroidAndIosDeviceToken();
//     } else {
//       if (await _isHuaweiDeviceContainsBothServices() == true) {
//         return await _getAndroidAndIosDeviceToken();
//       } else {
//         if (await _isHuaweiDeviceSupportsHuaweiServices() == true) {
//           return await getHuaweiDeviceToken();
//         } else {
//           return await _getAndroidAndIosDeviceToken();
//         }
//       }
//     }
//   }

//   Future<String> getDevicePlatform() async {
//     if (_isIosDevice() == true) {
//       return Platform.operatingSystem;
//     } else {
//       if (await _isHuaweiDeviceSupportsHuaweiServices() == true &&
//           await _isHuaweiDeviceSupportsGoogleServices() == false) {
//         return "huawei";
//       } else {
//         return Platform.operatingSystem;
//       }
//     }
//   }

//   // Future<bool?> _isHuaweiDeviceSupportsHuaweiServices() async =>
//   //     await GoogleHuaweiAvailability.isHuaweiServiceAvailable;

//   // Future<bool?> _isHuaweiDeviceSupportsGoogleServices() async =>
//   //     await GoogleHuaweiAvailability.isGoogleServiceAvailable;

//   // Future<bool?> _isHuaweiDeviceContainsBothServices() async {
//   //   bool? isHuaweiServices = await _isHuaweiDeviceSupportsHuaweiServices();
//   //   bool? isGoogleServices = await _isHuaweiDeviceSupportsGoogleServices();

//   //   return isHuaweiServices == true && isGoogleServices == true;
//   // }

//   Future<bool?> isUseGoogleServicesOperations() async {
//     if (_isIosDevice() == true) {
//       return true;
//     } else {
//       bool? isSupportsHuaweiServices =
//           await DeviceTokenService()._isHuaweiDeviceSupportsHuaweiServices();
//       bool? isSupportsGoogleServices =
//           await DeviceTokenService()._isHuaweiDeviceSupportsGoogleServices();
//       bool? isSupportsBothServices =
//           await DeviceTokenService()._isHuaweiDeviceContainsBothServices();

//       return (isSupportsHuaweiServices == false &&
//               isSupportsGoogleServices == true) ||
//           (isSupportsBothServices == true);
//     }
//   }

//   // bool _isAndroidDevice() => Platform.isAndroid;

//   bool _isIosDevice() => Platform.isIOS;
// }
