import 'dart:convert';
import 'package:quinable/auth_api/model/auth_model.dart';
import 'package:quinable/auth_api/auth_repo.dart';
import 'package:quinable/auth_api/auth_service.dart';
import 'package:quinable/auth_api/model/user_model.dart';
import 'package:quinable/auth_api/model/userdata_provid_model.dart';

class AuthRepositoryImpl implements AuthRepository {
 AuthService _authService = AuthService();

 @override
 Future<AuthModel> login(String emailOrMobile, var password) async {
  final response= await _authService.login(emailOrMobile, password);
  AuthModel authModel=AuthModel.fromJson(response.data);
  return  authModel;
 }

  @override
  Future<UserModel> getUserImpl() async{
   final response= await _authService.getdata() ;
   print('hello');
   UserModel userModel = UserModel.fromJson(response.data);
   return userModel;
  }

 @override
 Future<DetailProvider>getUserDetailImpl(int? itemId) async{
  final response= await _authService.getdetail(itemId) ;
  DetailProvider detailProvider=  DetailProvider.fromJson(response.data);
  return detailProvider;
 }
}
