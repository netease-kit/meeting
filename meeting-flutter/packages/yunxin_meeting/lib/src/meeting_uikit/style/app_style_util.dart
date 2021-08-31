// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_uikit;

///自定义状态栏风格
class AppStyle {
  static void setStatusBarTextBlackColor() {
// 自定义手机顶部黑条样式（Android沉浸式）
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    }
  }
}
