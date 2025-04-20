import 'dart:convert';
import 'dart:developer' as developer;

import '../../utils/utlis_const.dart';
import '../enums/http_method_enums.dart';
import 'dio_erros.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Configure timeouts
    options.connectTimeout = const Duration(minutes: 5);
    options.receiveTimeout = const Duration(minutes: 5);
    options.sendTimeout = const Duration(minutes: 5);
    // Log request details
    _logRequestDetails(options);

    // Apply headers
    await _applyHeaders(options);

    // Log headers
    _logHeaders(options);

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      developer.log('Status Code: ${response.statusCode}',
          name: 'ResponseInterceptor');
      developer.log('Response Body: ${response.data}',
          name: 'ResponseInterceptor');
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (kDebugMode) {
      _logErrorDetails(err);
    }

    if (err.error is SocketException) {
      if (isShowingErrorDialog) {
        return;
      } else {
        isShowingErrorDialog = true;
        _showErrorMessage("server_is_down_please_try_again");
      }
    } else if (_isClientError(err)) {
      _handleClientError(err);
    } else if (_isUnauthorized(err)) {
      log("Unauthorized : ${_isUnauthorized(err)}");
      await _handleUnauthorizedError();
    } else if (_is501StatusCode(err)) {
    } else if (_is406StatusCodeForActivateUser(err)) {
    } else if (_is426StatusCodeForRegisterUserNewDevice(err)) {
    } else {
      final errorMessage = DioExceptions.fromDioError(err).toString();
      _showErrorMessage(errorMessage);
    }

    super.onError(err, handler);
  }

  void _logErrorDetails(DioException err) {
    developer.log("Error Response Code: ${err.response?.statusCode.toString()}",
        name: 'ErrorInterceptor');
    //developer.log("Error Message: ${err.message}", name: 'ErrorInterceptor');
    developer.log("Error Data: ${err.response?.data.toString()}",
        name: 'ErrorInterceptor');
    developer.log("Error Name: ${err.type.name}", name: 'ErrorInterceptor');
    // developer.log(
    //     "Error Status Message: ${err.response?.statusMessage.toString()}",
    //     name: 'ErrorInterceptor');
  }

  bool _isClientError(DioException err) {
    final statusCode = err.response?.statusCode;
    return statusCode == 400 || statusCode == 422 || statusCode == 504;
  }

  _handleClientError(DioException err) {
    if (err.response?.data['errorMessage'] != null) {
      errorData = {'error': err.response?.data['errorMessage']};
    } else if (err.response?.statusCode == 400) {
      developer.log("IF 400");
      final errors = err.response?.data['errors'];
      if (errors != null && errors is Map<String, dynamic>) {
        // Extract individual error messages and concatenate them
        final errorMessages = errors.values.map((error) {
          if (error is List<dynamic> && error.isNotEmpty) {
            return error[0].toString();
          } else {
            developer.log("ELSE");
            _showErrorMessage(error.toString());
            return error.toString();
          }
        }).toList();
        // Join the error messages into a single string
        final joinedErrorMessages = errorMessages.join(', ');
        errorData = {'error': joinedErrorMessages};
        // Display a more user-friendly error message
        developer.log("DISLAY");
        _showErrorMessage(joinedErrorMessages);
      } else {
        // Default error message for 400 status code
        String defaultMessage =
            err.response?.data['returnText'] ?? "Bad Request";
        _showErrorMessage(defaultMessage);
        errorData = {'error': defaultMessage};
      }
    } else {
      final messages = err.response?.data['returnText'];
      log("messages : ${messages == null}");
      _showErrorMessage(
          messages != "" && messages != null ? messages : "Bad Request");
      return messages;
    }
  }

  void _showErrorMessage(String message) {
    GeneralUtilis()
        .showErrorBottomModalSheet(navigatorState.currentContext!, message);
  }

  bool _isUnauthorized(DioException err) {
    log("${err.response?.statusCode}");
    return err.response?.statusCode == 401;
  }

  bool _is501StatusCode(DioException err) {
    log("${err.response?.statusCode}");
    return err.response?.statusCode == 501;
  }

  bool _is406StatusCodeForActivateUser(DioException err) {
    log("${err.response?.statusCode}");
    return err.response?.statusCode == 406 || err.response?.statusCode == 409;
  }

  bool _is426StatusCodeForRegisterUserNewDevice(DioException err) {
    log("${err.response?.statusCode}");
    return err.response?.statusCode == 426;
  }

  Future<void> _handleUnauthorizedError() async {
    // await LocalStorage().clearToken();
    // // work to continue as guest mode
    // String? guestToken = LocalStorage().getGuestToken();
    // await LocalStorage().setBearerToken(token: guestToken);
    //
    // AppNavigation.navigateToRemovingAll(
    //     navigatorState.currentContext, const SigninPage());
    if (isShowingErrorDialog) {
      return;
    } else {
      isShowingErrorDialog = true;
      GeneralUtilis().showErrorBottomModalSheet(navigatorState.currentContext!,
          "your_session_has_expired_please_login_again");
    }
  }

  void _logRequestDetails(RequestOptions options) {
    if (kDebugMode) {
      developer.log('Request Method: ${options.method}',
          name: 'RequestInterceptor');

      developer.log('Request URL: ${options.uri}', name: 'RequestInterceptor');

      if (options.data is FormData) {
      } else {
        String jsonString = jsonEncode(options.data);
        developer.log('Encoded Request Body: $jsonString',
            name: 'RequestInterceptor');
      }
    }
  }

  String sanitizeDeviceName(String deviceName) {
    return deviceName.replaceAll(RegExp(r'[^\x00-\x7F]'),
        ''); // Replace smart quote with ASCII apostrophe
  }

  Future<void> _applyHeaders(RequestOptions options) async {
    List<String> deviceDetails = await GeneralUtilis.getDeviceDetails();
    Locale currentLocale = const Locale("en");
    String? devicePlatform = "ios";

    if (options.headers['Authorization'] == null) {
      options.headers['DeviceID'] = sanitizeDeviceName(deviceDetails[0]);
      options.headers['Model'] = deviceDetails[1].toString();
      options.headers['DeviceVersion'] = deviceDetails[2].toString();
      options.headers['PlatForm'] = devicePlatform;
      // Set the 'Authorization' header if not already provided
      // options.headers['origin'] = "http://alfaremit.com:6095";
      options.headers['origin'] = ApiConst.origin;
      options.headers['buildVersionNumber'] = ApiConst.buildVersionNumber;
      // options.headers['Authorization'] =
      // "Bearer ${LocalStorage().getBearerToken()}";
      options.headers['languageCode'] = currentLocale.languageCode;
      // options.headers['sessionId'] = LocalStorage().getSessionID() ?? "";
      // options.headers['countryCode'] = LocalStorage().getCountryCodeFromIP();
    }

    // Set other headers here
    options.headers['DeviceID'] = sanitizeDeviceName(deviceDetails[0]);
    options.headers['Model'] = deviceDetails[1].toString();
    options.headers['DeviceVersion'] = deviceDetails[2].toString();
    options.headers['PlatForm'] = devicePlatform;
    options.headers['buildVersionNumber'] = ApiConst.buildVersionNumber;
    options.headers['languageCode'] = currentLocale.languageCode;
    // options.headers['sessionId'] = LocalStorage().getSessionID() ?? "";
    //options.headers['Accept'] = 'application/json';

    if (options.method != HttpMethod.get.value) {
      //options.headers['Content-Type'] = 'application/json; charset=UTF-8';
      if (options.data is FormData) {
        _configureFormDataRequest(options);
      } else {
        _configureJsonRequest(options);
      }
    }

    if (kDebugMode) {
      //_logHeaders(options);
    }
  }

  void _configureFormDataRequest(RequestOptions options) {
    options.headers['Content-Type'] = 'multipart/form-data';
    log(options.headers.toString());
    options.connectTimeout = const Duration(minutes: 2);
    options.receiveTimeout = const Duration(minutes: 2);
    options.sendTimeout = const Duration(minutes: 2);

    // Log request body for FormData
    Map<String, dynamic> requestBody = {};
    for (var field in options.data.fields) {
      requestBody[field.key] = field.value;
    }

    for (var file in options.data.files) {
      if (kDebugMode) {
        developer.log(
            'Request Body Images: {${file.key} : ${file.value.filename!}}',
            name: 'RequestInterceptor');
      }
    }

    if (kDebugMode) {
      developer.log('Request Body: $requestBody', name: 'RequestInterceptor');
    }
  }

  void _configureJsonRequest(RequestOptions options) {
    if (kDebugMode) {
      developer.log('Request Body: ${options.data}',
          name: 'RequestInterceptor');
    }
  }

  void _logHeaders(RequestOptions options) {
    if (kDebugMode) {
      developer.log('Headers: ${options.headers.toString()}',
          name: 'RequestInterceptor');
    }
  }
}
