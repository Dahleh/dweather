import 'dart:io';

abstract class BaseService {
  Future<dynamic> httpGet(
    String url, {
    queryParameters,
    tokenCheck = true,
    bool isLoading = true,
  });

  Future<dynamic> httpDelete(
    String url, {
    queryParameters,
    tokenCheck = true,
    bool isLoading = true,
  });

  Future<dynamic> httpPost(
    String url, {
    tokenCheck = true,
    dynamic requestBody,
    filesCheck = false,
    isToast = true,
    bool isLoading = true,
    List<File>? filesList,
    List<String>? imageKeys,
  });
}
