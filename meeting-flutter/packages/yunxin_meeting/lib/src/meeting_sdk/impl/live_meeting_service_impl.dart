// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_sdk;

/// 直播服务实现类
class _NELiveMeetingServiceImpl extends NELiveMeetingService {
  static final _NELiveMeetingServiceImpl _instance = _NELiveMeetingServiceImpl._();

  factory _NELiveMeetingServiceImpl() => _instance;

  _NELiveMeetingServiceImpl._();
}
