// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ChangeHostData extends BaseData{
  ///被操作对象user id
  String operaUser;

  ChangeHostData(this.operaUser) : super(TCProtocol.controlHost, 0);

  @override
  Map toData() {
    return {
      'operAccountId': operaUser,
    };
  }

}