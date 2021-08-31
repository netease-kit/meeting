// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class MeetingBaseData extends BaseData {
  String nick;
  bool muteVideo;
  bool muteAudio;
  String meetingId;
  String? password;

  MeetingBaseData(int type, int requestId, this.nick, this.muteVideo, this.muteAudio,
      this.meetingId, {this.password}) : super(type, requestId);

  @override
  Map toData() => {
        'requestId': requestId,
        'nickName': nick,
        'video': muteVideo,
        'audio': muteAudio,
        'meetingId': meetingId,
        'password': password ?? '',
      };
}
