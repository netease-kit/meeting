// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ControlJoinMeetingInfo {
  ///公有云音视频房间成员uid
  final int avRoomUid;

  ///	随机会议码,9位数字；个人会议码，10位数字
  final String meetingId;

  /// 是否有全体禁音
  final int audioAllMute;

  ControlJoinMeetingInfo({
    required this.avRoomUid,
    required this.meetingId,
    this.audioAllMute = 0,
  });
}
