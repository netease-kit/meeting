// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_core;

class MeetingUIService {
  static final MeetingUIService _instance = MeetingUIService._();

  factory MeetingUIService() => _instance;

  MeetingUIService._();

  NEMenuItemClickHandler? injectedMenuItemClickHandler;
}
