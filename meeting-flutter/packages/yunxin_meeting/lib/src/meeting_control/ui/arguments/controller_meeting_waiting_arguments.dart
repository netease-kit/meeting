// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ControllerMeetingWaitingArguments extends ControllerMeetingBaseArguments {
  ControllerMeetingWaitingArguments.verifyPassword(this.initWaitCode,
      {this.initWaitMsg,
      required String meetingId,
      String? displayName,
      String? password,
      int? audioAllMute,
      ControllerMeetingOptions? options})
      : super(
            meetingId: meetingId,
            displayName: displayName,
            password: password,
            audioAllMute: audioAllMute,
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
