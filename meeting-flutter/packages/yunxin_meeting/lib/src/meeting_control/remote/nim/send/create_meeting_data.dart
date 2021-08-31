// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class CreateMeetingData extends MeetingBaseData{
  CreateMeetingData(String nick, bool muteVideo, bool muteAudio, String meetingId) : super(TCProtocol
      .createMeeting2TV, 0, nick, muteVideo, muteAudio, meetingId);
}
