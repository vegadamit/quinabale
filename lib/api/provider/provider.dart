import 'package:flutter/material.dart';
import 'package:quinable/api/model/model.dart';
import 'package:quinable/api/repository/data_repo.dart';
import 'package:quinable/api/repository/data_repo_imp.dart';
import 'package:quinable/api/service/service.dart';
import 'package:quinable/api/model/todo_model.dart';
import 'package:quinable/api/service/deta_service.dart';

class TodoProvider extends ChangeNotifier {
  // final service=Service();
  // bool isLoading = false;
  // List<Todo>todo=[];
  // List<Todo> get todos =>todo;
  //
  // getAlltodos()async{
  //   isLoading =true;
  //   notifyListeners();
  //   final response = await service.getAll();
  //   todo= response;
  //   isLoading = false;
  //   notifyListeners();
  //
  // }

  final dataservice = DataRepositoryimp();
  List<Data> data = [];
  bool Loding = false;

  dataget() async {
    Loding = true;
    notifyListeners();
    data = await dataservice.getData();
    Loding = false;
    notifyListeners();
  }



}
