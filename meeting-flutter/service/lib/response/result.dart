/// 回包内容
class Result<T> {
  final int code;

  final String? msg;

  final T? data;

  T get nonNullData => data as T;

  Result({required this.code, this.msg, this.data});

  Result<T> copy<T>({int? code, String? msg, T? data}) {
    return Result(
      code: code ?? this.code,
      msg: msg ?? this.msg,
      data: (data ?? this.data) as T?,
    );
  }



  // static Result<T> asFailed<T>(String msg) {
  //   return Result(msg: msg);
  // }
}
