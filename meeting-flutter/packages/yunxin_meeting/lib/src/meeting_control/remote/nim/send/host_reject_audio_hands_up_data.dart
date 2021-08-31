// Copyright (c) 2014-2020 NetEase, Inc.
// All right reserved.

part of meeting_control;

class HostRejectAudioHandsUpData extends BaseData{
  ///被操作对象user id
  String operaUser;

  HostRejectAudioHandsUpData(this.operaUser) : super(TCProtocol.hostRejectAudioHandsUp, 0);

  @override
  Map toData() {
    return {
      'operAccountId': operaUser,
    };
  }

}