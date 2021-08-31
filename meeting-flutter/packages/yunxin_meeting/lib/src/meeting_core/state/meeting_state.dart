// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_core;

/// 会议状态，
enum MeetingState {
  /// 初始状态
  init,

  /// 加入中
  joining,

  /// 已加入
  joined,

  closing,

  /// 手动关闭
  closed,
}
