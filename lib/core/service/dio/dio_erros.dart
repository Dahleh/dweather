import 'package:dweather/core/utils/utlis_const.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = "Request to api Cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout";
        break;
      case DioExceptionType.receiveTimeout:
        message = "receive_timeout_in_connection_with_api_server";
        break;
      case DioExceptionType.sendTimeout:
        message = "send_timeout_in_connection_with_api_server";
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      default:
        if (dioError.message?.contains("SocketException") == true) {
          message = "No Internet";
        } else {
          message = "unexpected_error_occured_please_try_again";
        }
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return "bad_request";
      case 422:
        return "bad_request";
      case 401:
        return "unauthorized";
      case 403:
        return "forbidden";
      case 404:
        // return error['message'];
        if (error is Map<String, dynamic>) {
          return error['message'] ?? "bad_request";
        } else {
          return "bad_request";
        }
      case 500:
        return "internal_server_error";
      case 502:
        return "bad_gateway";
      case 504:
        return "server_is_taking_too_long_to_respond_please_try_again_in_some_time";
      default:
        if (error is Map<String, dynamic>) {
          return error['message'] ?? "oops_something_went_wrong";
        } else {
          return "oops_something_went_wrong";
        }
      // return LocaleKeys.oops_something_went_wrong.tr();
    }
  }

  @override
  String toString() => message;
}
