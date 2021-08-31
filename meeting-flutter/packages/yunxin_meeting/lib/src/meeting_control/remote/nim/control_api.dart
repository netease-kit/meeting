// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

/// 主持人控制协议
class _ControlApi extends NimPassthroughApi<void> {
  _ControlRequest request;

  _ControlApi(this.request);

  @override
  String path() => '/v1/sdk/controller/control';

  @override
  void result(Map map) => null;

  @override
  Map data() => request.data;
}
