// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class LeaveMeetingData extends BaseData{

  int reason;

  LeaveMeetingData(this.reason) : super(TCProtocol.leaveMeeting, 0);

  @override
  Map toData() {
    return {
      'reason': reason,
    };
  }

}