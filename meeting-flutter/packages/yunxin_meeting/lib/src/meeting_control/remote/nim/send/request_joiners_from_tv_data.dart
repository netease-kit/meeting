// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class RequestJoinersFromTVData extends BaseData{

  RequestJoinersFromTVData() : super(TCProtocol.fetchJoiners2TV, 0);

  @override
  Map toData() => {};
}
