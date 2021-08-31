// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ModifyTVNickData extends BaseData{
  String nick;

  ModifyTVNickData(this.nick) : super(TCProtocol.modifyTVNick, 0);

  @override
  Map toData() {
    return {
      'nickName': nick,
    };
  }

}