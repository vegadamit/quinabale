import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quinable/auth_api/auth_repo_impl.dart';
import 'package:quinable/auth_api/model/user_model.dart';
import 'package:quinable/auth_api/model/userdata_provid_model.dart';
import 'package:quinable/prsentation/screens/home/home_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthProvider extends ChangeNotifier {
  final authRepository = AuthRepositoryImpl();
  bool isLoding = false;
  logindata(String emailOrMobile, var password, BuildContext context) async {
    isLoding = true;
    notifyListeners();
    try {
      final response = await authRepository.login(emailOrMobile, password);
      if (response.code == "success") {
        Fluttertoast.showToast(msg: response.code.toString());
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),),);
        print('${response.data?.firstName}');
        print('${response.data?.lastName}');
        isLoding = false;
        notifyListeners();
      }
    } catch (e, s) {
      print(e);
      print(s);
      Fluttertoast.showToast(msg: '$e');
      isLoding = false;
      notifyListeners();
      print('not found');
    }
  }

  UserModel? userModel;
  gatuser() async {
    isLoding = true;
    notifyListeners();
    try {
      userModel = await authRepository.getUserImpl();
      isLoding = false;
      notifyListeners();
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

  DetailProvider? detailProvider;
   Provideruserdetail(int? itemId) async {
    try {
      isLoding = true;
      notifyListeners();
      detailProvider = await authRepository.getUserDetailImpl(itemId);
      print('hello');
      isLoding = false;
      notifyListeners();
    } catch (e, s) {
      isLoding = false;
      notifyListeners();
      print(e);
      print(s);
    }
  }
}
