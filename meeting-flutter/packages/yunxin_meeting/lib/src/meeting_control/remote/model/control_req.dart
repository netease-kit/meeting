// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class _ControlRequest {
  /// 要发送的账号
  String toAccountId;

  BaseData param;

  _ControlRequest({required this.toAccountId, required this.param});

  Map get data => {'toAccountId': toAccountId, 'data': param.toMap()};
}
