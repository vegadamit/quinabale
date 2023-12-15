import 'package:dio/dio.dart';

class AuthApiHelper {
  static const String baseUrl = 'https://facility-api-staging.quinable.com/api/v8';
  Dio dio=Dio(BaseOptions(baseUrl: baseUrl));

  Future<Response> post({required String url,  Map<String, dynamic>? data,  Options? options}) async {
      final response = await dio.post(url, data: data,options: options,);
      return response;
  }

  Future<Response> get({required String url, Options? options})async{
    final response =await dio.get(url,options:options );
        return response;
  }

}