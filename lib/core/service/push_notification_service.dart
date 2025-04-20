// import 'package:dweather/core/service/local_storage_service.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import '../../features/forexRateModule/presentation/forexRate/forex_rate_bloc.dart';
// import '../../features/notificationManagementModule/presentation/pages/notifications_screen.dart';
// import '../utils/utlis_const.dart';

// class PushNotificationsManager {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   PushNotificationsManager._(); // Private constructor
//   static final PushNotificationsManager _instance =
//       PushNotificationsManager._();

//   factory PushNotificationsManager() => _instance;

//   Future<void> initPushNotificationService() async {
//     _firebaseMessaging.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     // Handle the initial message when the app is started
//     await _handleInitialMessage();

//     // Listen for messages when the app is in the foreground
//     FirebaseMessaging.onMessage.listen(_onMessageReceived);

//     // Listen for when the app is opened from a terminated state
//     FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);
//   }

//   Future<void> _handleInitialMessage() async {
//     var initialMessage = await _firebaseMessaging.getInitialMessage();
//     if (initialMessage != null) {
//       if (kDebugMode) {
//         log("Received initial FCM message");
//       }
//       _handleMessage(initialMessage.data);
//       // Navigate to notifications screen
//       // AppNavigation.navigateTo(
//       //     navigatorState.currentContext!, const NotificationsScreen());
//     }
//   }

//   void _onMessageReceived(RemoteMessage message) {
//     var data = message.data;
//     var notificationType = data['type'];
//     AppUserEntity? appUser = LocalStorage().getUser();
//     log("appUser : $appUser");
//     if (appUser == null) {
//       if (notificationType == NotificationType.GOLD_RATES.value ||
//           notificationType == NotificationType.CASH_PICKUP.value ||
//           notificationType == NotificationType.BANK_TRANSFER.value ||
//           notificationType == NotificationType.BUY_FOREIGN_CURRENCY.value ||
//           notificationType == NotificationType.TRAVEL_CARD.value ||
//           notificationType == NotificationType.MOBILE_WALLET.value) {
//         log("Guest User Notification : $notificationType");
//       } else {
//         if (!Platform.isIOS) {
//           LocalNotifications().showLocalNotifications(message);
//         }
//       }
//     } else {
//       log("Logged-In User Notification : $notificationType");
//       if (!Platform.isIOS) {
//         LocalNotifications().showLocalNotifications(message);
//       }
//     }

//     log("Foreground FCM Received: ");
//     log("Title: ${message.notification?.title}");
//     log("Notification DATA : ${message.data}");
//     log("Notification BODY:${message.notification?.body}");

//     // var json = jsonDecode(message.notification?.data ?? "");
//     // var data = message.data;
//     if (notificationType == NotificationType.LOOKUP_COUNTRY_RATES.value) {
//       BlocProvider.of<ForexRateBloc>(navigatorState.currentState!.context)
//           .add(const FetchLookupCountriesEvent(lookupCountriesList: []));
//     } else if (notificationType == NotificationType.SIGNIN.value) {
//       Future.delayed(const Duration(milliseconds: 800), () {
//         AppDialogs.showQIDExpiryDialog(
//             navigatorState.currentContext, data['notify']);
//         // ['message']
//       });
//       //LocalNotifications().showLocalNotifications(message);
//     } else {
//       // LocalNotifications().showLocalNotifications(message);
//       log("koi aur hy");
//     }

//     // Handle the notification as needed

//     // if (message.notification != null && navigatorState.currentContext != null) {
//     //   showDialog(
//     //       context: navigatorState.currentContext!,
//     //       builder: (_) => AlertDialog(
//     //             title: Text(message.notification!.title!),
//     //             content: Text(message.notification!.body!),
//     //           ));
//     // }
//   }

//   void _onMessageOpenedApp(RemoteMessage message) {
//     if (kDebugMode) {
//       log("App opened from terminated state:");
//     }
//     AppNavigation.navigateTo(
//         navigatorState.currentContext!, const NotificationsScreen());
//     _handleMessage(message.data);
//   }

//   void _handleMessage(Map<String, dynamic> remoteMessage) {
//     if (kDebugMode) {
//       log("REMOTE MESSAGE:");
//       log(remoteMessage.toString());
//     }

//     // Handle the message as needed
//   }
// }
