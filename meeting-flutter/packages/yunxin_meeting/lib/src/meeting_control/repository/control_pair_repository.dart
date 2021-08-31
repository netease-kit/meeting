// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

/// 遥控器
class ControlPairRepo {

  /// 注册账号
  static Future<NEResult<TVInfo>> getTVInfo(String pairingCode) {
    return HttpApiHelper.execute(_GetTvInfoApi(_GetTVInfoRequest(pairingCode)), isCheckIM: true);
  }


}
