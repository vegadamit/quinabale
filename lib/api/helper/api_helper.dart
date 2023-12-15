import 'package:dio/dio.dart';
import 'package:quinable/app/utils/constants/app_url.dart';

class ApiHelper{
  static Dio dio=Dio(BaseOptions(
    baseUrl: ApiUrl.baseUrl
  ));

    static Future<dynamic> get(String url)async{
      final response = await dio.get(url);
      if(response.statusCode==200){
        return response.data;
      }
      else{
        print('');
      }
    }
}