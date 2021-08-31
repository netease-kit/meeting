// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_core;

class MembersArguments {

  final Stream roomInfoUpdatedEventStream;
  final MeetingOptions options;

  MembersArguments({
    required this.options,
    required this.roomInfoUpdatedEventStream,
  });

}
