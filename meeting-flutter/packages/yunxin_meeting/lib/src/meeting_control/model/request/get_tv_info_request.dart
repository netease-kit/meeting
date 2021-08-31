// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class _GetTVInfoRequest {
  /// 配对码
  String pairingCode;

  _GetTVInfoRequest(this.pairingCode);

  Map get data => {'pairingCode': pairingCode};
}
