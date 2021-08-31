// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class ControlArguments {
  String? pairCode;
  TVStatus? tvStatus;
  bool? openCamera;
  bool? openMicrophone;
  String? meetingId;
  ControlOptions? opts;
  String? fromRoute;

  ControlArguments(
      {this.pairCode, this.tvStatus, this.openCamera, this.openMicrophone,
      this.meetingId,
      this.opts,
      this.fromRoute});
}
