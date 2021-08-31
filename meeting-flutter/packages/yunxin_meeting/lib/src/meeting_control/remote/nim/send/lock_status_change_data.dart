// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class LockStatusChangeData extends BaseData{
  /// int,1:允许所有人加入,2:不允许任何加入
  int joinControlType;

  LockStatusChangeData(this.joinControlType) : super(TCProtocol.meetingLock, 0);

  @override
  Map toData() {
    return {
      'joinControlType': joinControlType,
    };
  }

}