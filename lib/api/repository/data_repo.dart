import 'package:quinable/api/model/model.dart';

abstract class DataRepository {
  Future<List<Data>> getData();
}
