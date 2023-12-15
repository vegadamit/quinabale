import 'dart:convert';
import 'package:quinable/api/helper/api_helper.dart';
import 'package:quinable/app/utils/constants/app_url.dart';
import 'package:quinable/api/model/model.dart';
import 'package:quinable/api/repository/data_repo.dart';
import 'package:quinable/api/service/deta_service.dart';

class DataRepositoryimp implements DataRepository {

  @override
  Future<List<Data>> getData() async {
    dynamic response = await ApiHelper.get(ApiUrl.users);
    if (response != null) {
      return DataFromJson(jsonEncode(response));
    }
    return [];
  }
}

