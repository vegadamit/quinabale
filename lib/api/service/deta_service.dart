import 'package:dio/dio.dart';
import 'package:quinable/api/helper/api_helper.dart';
import 'package:quinable/app/utils/constants/app_url.dart';

 class DataService{
   dynamic getData()async{
     return await ApiHelper.get(ApiUrl.users);
   }

  }
