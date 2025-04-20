import 'package:dweather/core/utils/utlis_const.dart';

import '../../erros/exceptions.dart';
import 'base_service.dart';
import 'dio_interceptors.dart';

class DioService extends BaseService {
  final Dio dio;

  DioService() : dio = Dio() {
    dio.interceptors.add(DioInterceptor());
  }

  @override
  Future httpGet(
    String url, {
    queryParameters,
    tokenCheck = false,
    bool isLoading = true,
  }) async {
    dynamic responseJson;

    try {
      final response = await dio.get(
        ApiConst.baseURL + url,
        queryParameters: queryParameters ?? {},
      );
      responseJson = response.data;

      return responseJson;
    } on ServerException {
      throw ServerException();
    }
  }

  @override
  Future httpPost(
    String url, {
    tokenCheck = false,
    requestBody,
    filesCheck = false,
    isToast = true,
    bool isLoading = true,
    List<File>? filesList,
    List<String>? imageKeys,
  }) async {
    dynamic responseJson;

    try {
      if (filesCheck) {
        if (filesList != null && imageKeys != null) {
          for (int i = 0; i < filesList.length; i++) {
            requestBody.files.addAll({
              MapEntry(imageKeys[i].toString(),
                  await MultipartFile.fromFile(filesList[i].path)),
            });
          }
        }
      }
      final response = await dio.post(
        ApiConst.baseURL + url,
        data: requestBody,
      );
      responseJson = response.data;

      return responseJson;
    } on ServerException {
      throw ServerException();
    }
  }

  @override
  Future httpDelete(
    String url, {
    queryParameters,
    tokenCheck = false,
    bool isLoading = true,
  }) async {
    dynamic responseJson;

    try {
      final response = await dio.delete(
        ApiConst.baseURL + url,
        queryParameters: queryParameters ?? {},
      );
      responseJson = response.data;

      return responseJson;
    } on ServerException {
      throw ServerException();
    }
  }
}
