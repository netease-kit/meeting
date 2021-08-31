// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class SyncControlAccountData extends BaseData {
  String account;
  String code;
  String deviceId;
  String nick;
  String controllerProtocolVersion;

  SyncControlAccountData(this.account, this.code, this.deviceId, this.nick, this.controllerProtocolVersion)
      : super(TCProtocol.bind2TV, 0);

  @override
  Map toData() => {
        'accountId': account,
        'code': code,
        'deviceId': deviceId,
        'nickName': nick,
        'controllerProtocolVersion': controllerProtocolVersion
      };
}
