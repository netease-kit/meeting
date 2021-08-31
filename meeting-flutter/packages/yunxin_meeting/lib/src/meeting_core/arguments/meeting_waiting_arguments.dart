// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_core;

class MeetingWaitingArguments extends MeetingBaseArguments {
  MeetingWaitingArguments.verifyPassword(this.initWaitCode,
      {this.initWaitMsg,
      required String meetingId,
      String? displayName,
      String? password,
      int? audioAllMute,
      MeetingOptions? options})
      : super(
            meetingId: meetingId,
            displayName: displayName,
            password: password,
            options: options) {
    waitingType = _MeetingWaitingType.verifyPassword;
  }

  int initWaitCode;

  String? initWaitMsg;

  late _MeetingWaitingType waitingType;
}

enum _MeetingWaitingType {
  /// need verify password to join
  verifyPassword,
}
