// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class DisconnectTVData extends BaseData{

  DisconnectTVData() : super(TCProtocol.unBind2TV, 0);

  @override
  Map toData() => {};
}
