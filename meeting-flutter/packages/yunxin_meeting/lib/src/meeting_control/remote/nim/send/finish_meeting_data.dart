// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class FinishMeetingData extends BaseData{

  int reason;

  FinishMeetingData(this.reason) : super(TCProtocol.finishMeeting2TV, 0);

  @override
  Map toData() {
    return {
      'reason': reason,
    };
  }

}