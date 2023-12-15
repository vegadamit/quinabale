import 'package:dio/dio.dart';
import 'package:quinable/app/utils/constants/app_url.dart';
import 'package:quinable/auth_api/auth_helper.dart';

class AuthService extends AuthApiHelper {
  AuthApiHelper _apiHelper = AuthApiHelper();

  Future<Response> login(String emailOrMobile, var password) async {
    Response response = await _apiHelper.post(
        data: {
          'email_or_mobile': emailOrMobile,
          "password": password,
        },
        url: ApiUrl.login,
        options: Options(headers: {
          'Content-Type': 'application/json',
        }));
    if (response.statusCode == 200) {
      if (response.data['code'] == "success") {
        print('login successful');
        return response;
      } else {
        throw (response.data['message']);
      }
    } else {
      print('Invalid status-code');
    }
    return response;
  }

  Future<Response> getdata() async {
    Response response = await _apiHelper.get(
        url:ApiUrl.providers,
        options: Options( headers: {
          'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDUwNzZlZmNiY2Y4MDFhYWQyMjFiNGRlNmVhNTIyYWM2ODJhZTVjNGE4ODhkNjdmMjRkNDcwYzdlNGYwZWNjMjFiZjViNzBjODg3Yzk5MTUiLCJpYXQiOjE2OTEwMzc0NDEuNDYwOTg4LCJuYmYiOjE2OTEwMzc0NDEuNDYwOTkzLCJleHAiOjE3MjI2NTk4NDEuNDUyNDMxLCJzdWIiOiI1OTkiLCJzY29wZXMiOltdfQ.WKynlXsG83eAOXOqmMpiuWi3phnSLDGxPUVEGVeNzahV698p8cMGN4fv7t_TC3zP7JCZSw7I9Zr0T4rle0WxcIUqxCznrUxwj4gKG3ANwlAfagdcMbgglP7dTwCn7ixQjsLLqzlrzvFznq0aDtjN5L2_WNcDj-0D_ur7SGUoYf28nZy0av2Rc8RlbLNIYVCYh3AEwhh_xZVzfFDPm_863QByPO3zhXm0dCXvdfxmAi8Zout5ow0-aVG6ie78edaMjbduFLXA7pLxRcqWLGE0zqtxkfyrLbwiOOOoxps7HuUTGiyP8ao6g44hd-1BKDeVxiFOJzR2er7LcQ4UJa0hf2cetDJ1yyYDakDHf46M2H7AKNtiN38ioHCQwLn7IPhOYL_bC0pmJBTdKIfmvpcp-fH7PiiXTT4TlTiN84nJmuUgd6BoWc5cUbMFmTFJgUMgsWa3-VSTlSluDFyom3Tqj0UrMq5A7humYntpRb9SdJwrCePPBVm7ZgMCTlSlU0EGarvBY6RiZMiYWupZiBmXD1mIKBG_yvSjENyiorx2yy_DhspQI-t8mfUKkMyTKHHVEOOJCAaQM6E46TH_RBBugCL5LWNbfEvaQu43bcQkdvL45Wm6AZAt-5j_0D7-7SKyBQzcPoRFMXaiWDs7-RmyOWrfFLt1DXBjHlVMmcyi7dA'
        }));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Invalid Response');
    }
  }

  Future<Response> getdetail(int? itemId) async {
    Response response = await _apiHelper.get(
        url:'${ApiUrl.providers}/$itemId',
        options: Options( headers: {
          'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDUwNzZlZmNiY2Y4MDFhYWQyMjFiNGRlNmVhNTIyYWM2ODJhZTVjNGE4ODhkNjdmMjRkNDcwYzdlNGYwZWNjMjFiZjViNzBjODg3Yzk5MTUiLCJpYXQiOjE2OTEwMzc0NDEuNDYwOTg4LCJuYmYiOjE2OTEwMzc0NDEuNDYwOTkzLCJleHAiOjE3MjI2NTk4NDEuNDUyNDMxLCJzdWIiOiI1OTkiLCJzY29wZXMiOltdfQ.WKynlXsG83eAOXOqmMpiuWi3phnSLDGxPUVEGVeNzahV698p8cMGN4fv7t_TC3zP7JCZSw7I9Zr0T4rle0WxcIUqxCznrUxwj4gKG3ANwlAfagdcMbgglP7dTwCn7ixQjsLLqzlrzvFznq0aDtjN5L2_WNcDj-0D_ur7SGUoYf28nZy0av2Rc8RlbLNIYVCYh3AEwhh_xZVzfFDPm_863QByPO3zhXm0dCXvdfxmAi8Zout5ow0-aVG6ie78edaMjbduFLXA7pLxRcqWLGE0zqtxkfyrLbwiOOOoxps7HuUTGiyP8ao6g44hd-1BKDeVxiFOJzR2er7LcQ4UJa0hf2cetDJ1yyYDakDHf46M2H7AKNtiN38ioHCQwLn7IPhOYL_bC0pmJBTdKIfmvpcp-fH7PiiXTT4TlTiN84nJmuUgd6BoWc5cUbMFmTFJgUMgsWa3-VSTlSluDFyom3Tqj0UrMq5A7humYntpRb9SdJwrCePPBVm7ZgMCTlSlU0EGarvBY6RiZMiYWupZiBmXD1mIKBG_yvSjENyiorx2yy_DhspQI-t8mfUKkMyTKHHVEOOJCAaQM6E46TH_RBBugCL5LWNbfEvaQu43bcQkdvL45Wm6AZAt-5j_0D7-7SKyBQzcPoRFMXaiWDs7-RmyOWrfFLt1DXBjHlVMmcyi7dA'
        }));
    if (response.statusCode == 200) {
        return response;
    } else {
      throw Exception('invalid');
    }
  }
}
