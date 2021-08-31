// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class JoinMeetingData extends MeetingBaseData{
  JoinMeetingData(int requestId, String nick, bool muteVideo, bool muteAudio, String meetingId,  {String? password}) :
        super(TCProtocol.joinMeeting2TV, requestId, nick, muteVideo, muteAudio, meetingId, password: password);
}
