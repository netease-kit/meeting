// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_sdk;

/// 用于在完成SDK登录鉴权后，查询当前已登录账号的基本信息，如个人会议号信息
/// 通过[NEMeetingSDK.getAccountService]获取账号服务的实例
abstract class NEMeetingAccountService {
  /// 账号信息
  NEAccountInfo? getAccountInfo();
}
