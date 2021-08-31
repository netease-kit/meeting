// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ModifyNickData extends BaseData{
  String userId;
  String nick;

  ModifyNickData(this.userId, this.nick) : super(TCProtocol.modifyNick, 0);

  @override
  Map toData() {
    return {
      'accountId': userId,
      'nickName': nick,
    };
  }

}