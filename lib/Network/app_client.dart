import 'package:dio/dio.dart';
import 'package:dweather/Models/weather.dart';
import 'package:flutter/foundation.dart';

class AppClient {
  final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://api.weatherapi.com/v1',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    headers: {'Content-Type': 'application/json'},
  ));

  AppClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (kDebugMode) {
          print("Sending request to: ${options.uri}");
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        if (kDebugMode) {
          print('Received response: ${response.statusCode}');
        }
        return handler.next(response);
      },
      onError: (error, handler) async {
        int retryCount = 0;
        int maxRetries = 3;
        while (retryCount < maxRetries &&
            error.type == DioExceptionType.connectionTimeout) {
          retryCount++;
          try {
            if (kDebugMode) {
              print("Connection timeout, retrying...");
            }
            final res = await dio.request(error.requestOptions.path);
            return handler.resolve(res);
          } catch (e) {
            if (kDebugMode) {
              print(e.toString());
            }
          }
        }
        return handler.next(error);
      },
    ));
  }

  Future<Weather> getCurrentLocation(String q) async {
    try {
      Response response = await dio.get("/forecast.json", queryParameters: {
        "key": "ae66eef8a3034efea2e80834240612",
        "q": q,
        "days": 5,
      });
      final data = Weather.fromJson(response.data);
      print(response.realUri);
      return data;
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching data: $e");
      }
      return Weather();
    }
  }
}
