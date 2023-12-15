// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:quinable/api/model/model.dart';
// import 'package:quinable/api/model/todo_model.dart';
//
// class Service{
//   final dio=Dio();
//
//   Future<List<Todo>> getAll()async{
//      final response =await dio.get('https://jsonplaceholder.typicode.com/todos');
//
//     if(response.statusCode==200){
//       final json = response.data as List<dynamic>;
//       final todos = json.map((e) {
//         return Todo(
//           id: e['id'],
//           title: e['title'],
//           userId: e['userId'],
//           completed: e['completed'],
//         );
//       }).toList();
//       return todos;
//     }
//     return [];
//     }
//   }
//
  import 'package:dio/dio.dart';

import '../../auth_api/model/auth_model.dart';

class DataService{
    final dio=Dio();
    Future<List<Data>> getdata()async{
      final response =await dio.get('https://jsonplaceholder.typicode.com/users');
      if(response.statusCode==200){
         final json = (response.data as List<dynamic>).map((e) =>Data.fromJson(e)).toList();
         return  json;
      }
      return [];
    }
  }
