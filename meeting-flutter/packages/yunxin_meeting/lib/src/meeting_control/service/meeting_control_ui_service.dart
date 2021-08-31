// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class MeetingControlUIService {
  static final MeetingControlUIService _instance = MeetingControlUIService._();

  factory MeetingControlUIService() => _instance;

  MeetingControlUIService._();

  NEMenuItemClickHandler? injectedMenuItemClickHandler;
}
