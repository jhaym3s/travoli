import 'package:dio/dio.dart';

class ApiClient {
  ApiClient({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: "AppEndpoints.baseUrl",
                connectTimeout: const Duration(minutes: 1),
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json',
                 // 'Authorization': 'Bearer ${module.token}',
                },
              ),
            );
  final Dio _dio;

  Future<dynamic> get(String url, {Map<String, dynamic>? params}) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: params,
        options: Options(
          headers: {
           // 'Authorization': 'Bearer ${module.token}',
          },
        ),
      );
      return response;
    } on FormatException {
      throw const FormatException('Bad response format 👎');
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: params,
        options: Options(
          headers: {
            
            //'Authorization': 'Bearer ${module.token}',
          },
        ),
      );
      return response;
    } on FormatException {
      throw const FormatException('Bad response format 👎');
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> authPost(
     {required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: params,
        options: Options(
          headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
          },
        ),
      );
      return response;
    } on FormatException {
      throw const FormatException('Bad response format 👎');
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> patch(String url, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.patch(
        url,
        data: data,
        options: Options(
          headers: {
          //  'Authorization': 'Bearer ${module.token}',
          },
        ),
      );
      return response;
    } on FormatException {
      throw const FormatException('Bad response format 👎');
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> put(String url, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.put(
        url,
        data: data,
        options: Options(
          headers: {
          //  'Authorization': 'Bearer ${module.token}',
          },
        ),
      );
      return response;
    } on FormatException {
      throw const FormatException('Bad response format 👎');
    } catch (e) {
      rethrow;
    }
  }

  // Future<dynamic> putImage({
  //   required String url,
  //   required Map<String, dynamic>? query,
  //   required XFile image,
  // }) async {
  //   try {
  //     final img = await image.readAsBytes();
  //     final cntlength = await image.length();
  //     final mime = lookupMimeType(image.path);
  //     final response = await _dio.put(
  //       url,
  //       queryParameters: query,
  //       data: Stream.fromIterable(img.map((e) => [e])),
  //       options: Options(
  //         contentType: mime,
  //         headers: {
  //           'Content-Length': cntlength.toString(),
  //           'Connection': 'keep-alive',
  //           'Accept': '/',
  //         },
  //       ),
  //     );
  //     return response.data;
  //   } on FormatException {
  //     throw const FormatException('Bad response format 👎');
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<dynamic> delete(String url, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.delete(
        url,
        data: data,
        options: Options(
          headers: {
           // 'Authorization': 'Bearer ${module.token}',
          },
        ),
      );
      return response;
    } on FormatException {
      throw const FormatException('Bad response format 👎');
    } catch (e) {
      rethrow;
    }
  }
}