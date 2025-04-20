// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';

// import '../utils/utlis_const.dart';
// import 'package:http/http.dart' as http;

// class LocalStorage {
//   static LocalStorage? _sharedPreferenceHelper;
//   static SharedPreferences? _sharedPreferences;

//   LocalStorage._createInstance();

//   factory LocalStorage() {
//     // factory with constructor, return some value
//     _sharedPreferenceHelper ??= LocalStorage._createInstance();
//     return _sharedPreferenceHelper!;
//   }

//   Future<SharedPreferences> get sharedPreference async {
//     _sharedPreferences ??= await SharedPreferences.getInstance();
//     return _sharedPreferences!;
//   }

//   ///-------------------- Clear Preference -------------------- ///
//   void clear() {
//     _sharedPreferences?.clear();
//   }

//   ///-------------------- User -------------------- ///
//   Future<void> setUser({String? user}) async {
//     await _sharedPreferences?.setString(SharedKeys.user, user ?? '');
//   }

//   void setSignupUser({String? user}) {
//     log("USER SET: $user");
//     _sharedPreferences?.setString(SharedKeys.signupUser, user ?? '');
//   }

//   AppUserEntity? getSignupUser() {
//     try {
//       final storedUser = _sharedPreferences?.getString(SharedKeys.signupUser);
//       if (storedUser == null || storedUser.isEmpty) {
//         return null;
//       }
//       final jsonResponse = jsonDecode(storedUser);
//       final user = AppUser.fromJson(jsonResponse);
//       return user;
//     } catch (e) {
//       log('Error decoding user data: $e');
//       return null; // Return null or handle the error as needed
//     }
//   }

//   AppUserEntity? getUser() {
//     try {
//       final storedUser = _sharedPreferences?.getString(SharedKeys.user);
//       if (storedUser == null || storedUser.isEmpty) {
//         return null;
//       }
//       final jsonResponse = jsonDecode(storedUser);
//       final user = AppUser.fromJson(jsonResponse);
//       return user;
//     } catch (e) {
//       log('Error decoding user data: $e');
//       return null; // Return null or handle the error as needed
//     }
//   }

//   void setMyBookActivationValue() {
//     AppUserEntity? appUser = getUser();
//     appUser?.isAnotherActivationAllowed = false;
//     appUser?.isCreatedOnMyBook = true;
//     setUser(user: jsonEncode(appUser));
//   }

//   Future<void> clearUser() async {
//     await _sharedPreferences?.remove(SharedKeys.user);
//   }

//   void clearUserData() {
//     // Get the existing user data as a JSON string
//     final String? existingUserDataString =
//         _sharedPreferences?.getString(SharedKeys.user);

//     if (existingUserDataString != null) {
//       // Parse the JSON string into a Map
//       Map<String, dynamic> existingUserData =
//           jsonDecode(existingUserDataString);

//       // Create a new map excluding userId and qatarId
//       final Map<String, dynamic> newUserData = {
//         'userId': existingUserData['userId'],
//         'qatarId': existingUserData['qatarId'],
//       };

//       // Convert the new user data map back to a JSON string
//       final String newUserDataString = jsonEncode(newUserData);

//       // Save the new user data as a JSON string
//       _sharedPreferences?.setString(SharedKeys.user, newUserDataString);
//     }
//   }

//   ///-------------------- Guest Token -------------------- ///
//   Future<void> clearGuestToken() async {
//     await setGuestToken(token: "");
//   }

//   String? getGuestToken() {
//     return _sharedPreferences?.getString(SharedKeys.guestToken);
//   }

//   Future<void> setGuestToken({String? token}) async {
//     await _sharedPreferences?.setString(SharedKeys.guestToken, token ?? "");
//   }

//   ///-------------------- Guest Token -------------------- ///

//   Future<void> clearToken() async {
//     await setBearerToken(token: "");
//   }

//   String? getBearerToken() {
//     return _sharedPreferences?.getString(SharedKeys.bearerToken);
//   }

//   Future<void> setBearerToken({String? token}) async {
//     await _sharedPreferences?.setString(SharedKeys.bearerToken, token ?? "");
//   }

//   ///-------------------- Bearer Token -------------------- ///
//   String? getBioMetricToken() {
//     return _sharedPreferences?.getString(SharedKeys.bioToken);
//   }

//   void setBioMetricToken({String? token}) {
//     _sharedPreferences?.setString(SharedKeys.bioToken, token ?? "");
//   }

//   void removeBioMetricToken() {
//     _sharedPreferences?.remove(SharedKeys.bioToken);
//   }

//   /// LANGUAGE AND ONBOARDING SCREEN ////
//   Future<void> setLanguageSelected({bool? value}) async {
//     await _sharedPreferences?.setBool("langSelected", value ?? false);
//   }

//   bool? getLanguageSelected() {
//     return _sharedPreferences?.getBool("langSelected");
//   }

//   void setOnBoardingSelected({bool? value}) {
//     _sharedPreferences?.setBool("onBoarding", value ?? false);
//   }

//   bool? getBoardingSelected() {
//     return _sharedPreferences?.getBool("onBoarding");
//   }

//   void setFaceMatchingTryCount({required int value}) {
//     _sharedPreferences?.setInt('try', value);
//   }

//   int getFaceMatchingTryCount() {
//     return _sharedPreferences?.getInt('try') ?? 0;
//   }

//   // Session ID

//   Future<void> clearSessionID() async {
//     await setSessionID(sessionID: "");
//   }

//   String? getSessionID() {
//     return _sharedPreferences?.getString(SharedKeys.sessionID);
//   }

//   Future<void> setSessionID({String? sessionID}) async {
//     await _sharedPreferences?.setString(SharedKeys.sessionID, sessionID ?? "");
//   }

//   // Cache to handle open biometric at home
//   Future<void> clearShouldOpenBiometric() async {
//     await setShouldOpenBiometric(shouldOpenBiometric: false);
//   }

//   bool? getShouldOpenBiometric() {
//     return _sharedPreferences?.getBool(SharedKeys.shouldOpenBiometric);
//   }

//   Future<void> setShouldOpenBiometric({bool? shouldOpenBiometric}) async {
//     await _sharedPreferences?.setBool(
//         SharedKeys.shouldOpenBiometric, shouldOpenBiometric ?? false);
//   }

//   // Cache to handle validate QID screen and signin Screen
//   Future<void> clearIsLoggedInOneTime() async {
//     await setIsLoggedInOneTime(value: false);
//   }

//   bool? getIsLoggedInOneTime() {
//     return _sharedPreferences?.getBool(SharedKeys.isLoggedInOneTime) ?? false;
//   }

//   Future<void> setIsLoggedInOneTime({bool? value}) async {
//     await _sharedPreferences?.setBool(
//         SharedKeys.isLoggedInOneTime, value ?? false);
//   }

//   Future<String> getCountryFromIP() async {
//     try {
//       var url = Uri.parse('http://ip-api.com/json');
//       final response = await http.get(url);
//       if (response.statusCode == 200) {
//         return json.decode(response.body)['countryCode'];
//       } else {
//         return "QR";
//       }
//     } catch (e) {
//       log("Error getting country code: $e");
//       return "QR";
//     }
//   }

//   Future<void> setCountryCodeFromIP() async {
//     String countryCode = await getCountryFromIP();
//     log("Country Code: $countryCode");
//     await _sharedPreferences?.setString(SharedKeys.countryCode, countryCode);
//   }

//   String? getCountryCodeFromIP() {
//     return _sharedPreferences?.getString(SharedKeys.countryCode) ?? "";
//   }
// }
