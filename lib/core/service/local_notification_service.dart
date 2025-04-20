// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class LocalNotifications {
//   final FlutterLocalNotificationsPlugin localNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   void notificationTapBackground(NotificationResponse notificationResponse) {}

//   void initialize() {
//     if (Platform.isAndroid) {
//       localNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//               AndroidFlutterLocalNotificationsPlugin>()!
//           .requestNotificationsPermission();
//     }
//     InitializationSettings initializationSettings =
//         const InitializationSettings(
//       android: AndroidInitializationSettings("@mipmap/ic_launcher"),
//       iOS: DarwinInitializationSettings(
//         requestCriticalPermission: true,
//         defaultPresentAlert: true,
//         defaultPresentBadge: true,
//         defaultPresentSound: true,
//         requestAlertPermission: true,
//         requestBadgePermission: true,
//         requestSoundPermission: true,
//       ),
//     );

//     localNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: notificationTapBackground,
//     );
//   }

//   Future<void> showLocalNotifications(RemoteMessage remoteMessage) async {
//     try {
//       var bigTextStyle = BigTextStyleInformation(
//         remoteMessage.notification?.body ?? "",
//         contentTitle: remoteMessage.notification?.title ?? "",
//         summaryText: "",
//       );

//       var id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
//       await localNotificationsPlugin.getNotificationAppLaunchDetails();

//       NotificationDetails notificationDetails = NotificationDetails(
//         android: AndroidNotificationDetails(
//           "AFX",
//           "AFX",
//           priority: Priority.high,
//           importance: Importance.max,
//           icon: "@mipmap/ic_launcher",
//           styleInformation: bigTextStyle, // Added BigTextStyleInformation
//           fullScreenIntent: true,
//         ),
//         iOS: const DarwinNotificationDetails(
//           presentAlert: true,
//           presentBadge: true,
//           presentSound: true,
//           subtitle: "",
//         ),
//       );

//       var title = remoteMessage.notification?.title ?? "";
//       var message = remoteMessage.notification?.body ?? "";

//       localNotificationsPlugin.show(
//         id,
//         title,
//         message,
//         notificationDetails,
//         payload: jsonEncode(remoteMessage.data),
//       );
//     } on Exception catch (e) {
//       log(e.toString());
//       rethrow;
//     }
//   }
// }
