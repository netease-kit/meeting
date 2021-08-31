// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_core;
///
/// meeting live & meeting live setting use same arguments, so need dispose with meeting live
class LiveArguments {
  final NEInRoomLiveInfo liveInfo;

  final Stream<Object> roomInfoUpdatedEventStream;

  LiveArguments(this.liveInfo, this.roomInfoUpdatedEventStream);

  /// not nullable
  NEInRoomLiveInfo get live => liveInfo;
}
