// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class CancelMeetingData extends BaseData{
  int action;
  String meetingId;

  CancelMeetingData(this.action, this.meetingId) : super(TCProtocol.cancel2TV, 0);

  @override
  Map toData() => {'action' : action, 'meetingId': meetingId};
}
