// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class RequestTVStatusData extends BaseData{

  RequestTVStatusData() : super(TCProtocol.requestTVStatus2TV,  0);

  @override
  Map toData() => {};
}
