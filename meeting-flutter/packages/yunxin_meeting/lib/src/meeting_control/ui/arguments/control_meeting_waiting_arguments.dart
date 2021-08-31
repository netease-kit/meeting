// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ControlMeetingWaitingArguments extends ControllerMeetingWaitingArguments {
  String? pairId;
  TVStatus? tvStatus;

  ControlMeetingWaitingArguments.verifyPassword(int initWaitCode,
      {required String meetingId,
        String? displayName,
        String? password,
        ControllerMeetingOptions? options,
        int? audioAllMute,
        this.pairId,
        this.tvStatus,})
      : super.verifyPassword(initWaitCode,
      meetingId: meetingId,
      displayName: displayName,
      password: password,
      audioAllMute: audioAllMute,
      options: options);
}
