// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class Store {

//  初始化
  static Widget init({BuildContext? context, Widget? child}) {
    /// 返回多个状态
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ShowTypeModel()),
    ], child: child);
  }

  //  通过Provider.value<T>(context)获取状态数据
  static T value<T>(BuildContext context, {bool isListen = true}) {
    return Provider.of(context, listen: isListen);
  }

  //  通过Consumer获取状态数据
  static Consumer connect<T>({required Widget Function(BuildContext context, T value, Widget? child) builder,
    Widget? child}) {
    return Consumer<T>(builder: builder, child: child);
  }

}