// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_core;

/// 会议页面参数
class MeetingArguments extends MeetingBaseArguments {
  /// join info
  final JoinRoomInfo joinmeetingInfo;

  late int requestTimeStamp;

  MeetingArguments(
      {required this.joinmeetingInfo,
        String? displayName,
      String? password,
      MeetingOptions? options})
      : super(
            meetingId: joinmeetingInfo.meetingId,
            displayName: displayName,
            password: password,
            options: options) {
    requestTimeStamp = DateTime.now().millisecondsSinceEpoch;
  }

  @override
  String get meetingId => joinmeetingInfo.meetingId;

  int get createTime => joinmeetingInfo.createTime;
}
