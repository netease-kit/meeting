// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class RemoveAttendeeData extends BaseData{
  ///被操作对象user id
  String operaUser;

  RemoveAttendeeData(this.operaUser) : super(TCProtocol.removeMember, 0);

  @override
  Map toData() {
    return {
      'operAccountId': operaUser,
    };
  }

}