import 'package:service/response/result.dart';

abstract class BaseProto<T> {

  String path();

  Map data();

  T result(Map map);

  Map<String, dynamic>? header() {
    return null;
  }

  Future<Result<T>> execute();

  bool checkLoginState(){
    return true;
  }
}
