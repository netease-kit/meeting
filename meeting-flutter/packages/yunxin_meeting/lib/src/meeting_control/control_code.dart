// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ControlCode {
  static const int success = 200;
  static const int meetingNotExist = 2000;

  static String? getMsg(String? msg) {
    if (TextUtils.isEmpty(msg)) {
      return '网络连接失败，请检查你的网络连接！';
    }
    return msg;
  }

  static String? getErrorMsg(String? msg, String? defaultTips) {
    if (TextUtils.isEmpty(msg)) {
      return TextUtils.isEmpty(defaultTips) ? '网络连接失败，请检查你的网络连接！' : defaultTips;
    }
    return msg;
  }
}