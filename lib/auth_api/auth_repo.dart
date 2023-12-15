
import 'package:quinable/auth_api/model/auth_model.dart';
import 'package:quinable/auth_api/model/user_model.dart';
import 'package:quinable/auth_api/model/userdata_provid_model.dart';

abstract class AuthRepository {
   Future<AuthModel> login(String emailOrMobile, var password);
   Future<UserModel> getUserImpl();
   Future<DetailProvider> getUserDetailImpl(int? itemId);
}
